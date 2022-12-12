import 'dart:convert';

import 'package:cafe_app/structures/local.dart';
import 'package:cafe_app/utils/get_position.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kakaomap_webview/kakaomap_webview.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parse;

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  createState() => _MapPageState();
}

Future<List<Local>> fetchLocals(double x, double y) async {
  final List<Local> locals = [];

  int page = 1;

  while (true) {
    final queryParams = {
      'category_group_code': 'CE7',
      'x': x.toString(),
      'y': y.toString(),
      'page': page.toString(),
      'radius': '20000',
      'sort': 'distance',
    };
    final response = await http.get(
        Uri.https(
          'dapi.kakao.com',
          '/v2/local/search/category.json',
          queryParams,
        ),
        headers: {'Authorization': 'KakaoAK 0827a8eb040e31d156794ed4b6e8e6b2'});
    final data = jsonDecode(response.body);

    final List<Map<String, dynamic>> documents =
        List<Map<String, dynamic>>.from(data['documents']);
    locals.addAll(documents.map(Local.fromJson));

    if (data['meta']['is_end'] == true) {
      break;
    }

    page++;
  }

  return locals;
}

class _MapPageState extends State<MapPage> with AutomaticKeepAliveClientMixin {
  final _sheetController = DraggableScrollableController();

  late WebViewController _mapController;
  double lat = 33.450701;
  double lng = 126.570667;

  String? selectedId;

  late Future<Position> _positionFuture;
  late Future<List<Local>> _localsFuture;

  @override
  void initState() {
    super.initState();
    () async {
      _positionFuture = getPosition();
      final position = await _positionFuture;

      _localsFuture = fetchLocals(
        position.longitude.toDouble(),
        position.latitude.toDouble(),
      );
      final locals = await _localsFuture;

      for (var local in locals) {
        _mapController.runJavascript("""
          (function() {
            var marker = new kakao.maps.Marker({
              position: new kakao.maps.LatLng(${local.y}, ${local.x}),
              title: '${local.placeName}'
            });
            
            marker.setMap(map);
            markers.push(marker);
            
            kakao.maps.event.addListener(marker, 'click', function() {
              onTapMarker.postMessage('${local.id}');
            });
          })();
          
        """);
      }
    }();
  }

  @override
  bool get wantKeepAlive => true;

  Widget selectedCafeDetail(BuildContext context, {Local? local}) {
    return FutureBuilder(
      future: local != null
          ? http.get(Uri.parse(local.placeUrl), headers: {
              'User-Agent': faker.internet.userAgent(osName: 'iOS'),
            }).then((response) => parse.parse(response.body))
          : null,
      builder: (BuildContext context, AsyncSnapshot<dom.Document> snapshot) {
        if (!snapshot.hasData) return SizedBox();

        final selectedLocal = local!;

        return Column(
          children: [
            Image.network(
              'https://img1.kakaocdn.net/cthumb/local/R1920x0/?fname=http%3A%2F%2Ft1.kakaocdn.net%2Ffiy_reboot%2Fplace%2FBB3C4161268B4B3DA2BABE8496EEFC7A',
            ),
            Divider(height: 32),
            Text(
              selectedLocal.placeName,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              '여기에서 ${selectedLocal.distance}m 떨어짐',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 32),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.access_time_outlined),
                      SizedBox(width: 10),
                      Text('매일 09:00 ~ 23:00')
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 10),
                      Text(selectedLocal.roadAddressName)
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: 10),
                      Text(selectedLocal.phone)
                    ],
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final size = MediaQuery.of(context).size;

    return FutureBuilder(
      future: _positionFuture,
      builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
        if (!snapshot.hasData) {
          return Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 10),
                Text('불러오는 중')
              ],
            ),
          );
        }

        final data = snapshot.data!;

        return Stack(
          children: [
            KakaoMapView(
              mapController: (controller) {
                _mapController = controller;
              },
              width: size.width,
              height: MediaQuery.of(context).size.height - 135,
              kakaoMapKey: '059c865b6ec531caa368ee19373352a9',
              lat: data.latitude,
              lng: data.longitude,
              boundaryUpdate: (message) {
                KakaoBoundary boundary =
                    KakaoBoundary.fromJson(jsonDecode(message.message));
                print(
                    'ne : ${boundary.neLat}, ${boundary.neLng}, sw : ${boundary.swLat}, ${boundary.swLng}');
              },
              onTapMarker: (message) async {
                final locals = await _localsFuture;
                final local = locals
                    .firstWhere((element) => element.id == message.message);

                setState(() {
                  selectedId = local.id;
                });

                _mapController.runJavascript("""
                  var moveLatLon = new kakao.maps.LatLng(${double.parse(local.y) - 0.001}, ${local.x});
                  map.panTo(moveLatLon);
                """);

                _sheetController.animateTo(
                  0.6,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeOutQuart,
                );
              },
              customScript: """
                const markers = [];
              """,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 120, horizontal: 16),
                child: FloatingActionButton(
                  tooltip: '현재 위치로 이동',
                  child: const Icon(Icons.location_searching),
                  onPressed: () async {
                    setState(() {
                      _positionFuture = getPosition();
                    });
                    final position = await _positionFuture;
                    _mapController.runJavascript("""
                      var moveLatLon = new kakao.maps.LatLng(${position.latitude}, ${position.longitude});
                      map.panTo(moveLatLon);
                    """);
                  },
                ),
              ),
            ),
            DraggableScrollableSheet(
              controller: _sheetController,
              initialChildSize: 0.15,
              minChildSize: 0.15,
              snap: true,
              snapSizes: [0.15, 0.6],
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  controller: scrollController,
                  child: Container(
                      margin: EdgeInsets.only(top: 10),
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8.0,
                          ),
                        ],
                      ),
                      child: FutureBuilder(
                        future: _localsFuture,
                        builder: (BuildContext context,
                            AsyncSnapshot<List<Local>> snapshot) {
                          if (!snapshot.hasData) {
                            return Text('불러오는 중');
                          }

                          final locals = snapshot.data!;

                          final selectedLocals = locals
                              .where((element) => element.id == selectedId);

                          final selectedLocal = selectedLocals.isNotEmpty
                              ? selectedLocals.first
                              : null;

                          return Column(
                            children: [
                              Container(
                                width: 72,
                                height: 5,
                                decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(height: 4),
                              Divider(height: 24),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: '카페 검색',
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Divider(height: 24),
                              SizedBox(height: 16),
                              selectedCafeDetail(context, local: selectedLocal)
                            ],
                          );
                        },
                      )),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
