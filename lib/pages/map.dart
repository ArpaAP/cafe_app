import 'package:flutter/material.dart';
import 'package:kakaomap_webview/kakaomap_webview.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return KakaoMapView(
      width: size.width,
      height: size.height,
      kakaoMapKey: '059c865b6ec531caa368ee19373352a9',
      lat: 33.450701,
      lng: 126.570667,
      showMapTypeControl: true,
      showZoomControl: true,
      markerImageURL:
          'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png',
      onTapMarker: (message) {
        //event callback when the marker is tapped
      },
    );
  }
}
