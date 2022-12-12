import 'package:cafe_app/widgets/interior_card.dart';
import 'package:flutter/material.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({super.key});

  @override
  createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 8),
                    color: Colors.grey.withOpacity(.2),
                    spreadRadius: -2,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '💎 당신을 위한 추천 카페',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 12),
                    Column(
                      children: [
                        Card(
                          elevation: 0,
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            title: Text(
                              '공차 동산병원점',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text('137m'),
                            tileColor: Color.fromRGBO(242, 244, 245, 1),
                            onTap: () {},
                          ),
                        ),
                        Card(
                          elevation: 0,
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            title: Text(
                              '마시그래이 강창역점',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text('71m'),
                            tileColor: Color.fromRGBO(242, 244, 245, 1),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      '사용자 선호도 기반',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 24),
            Divider(height: 2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
              child: Text(
                '종류별로 찾기',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Wrap(
              spacing: 8,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    '프랜차이즈',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    '개인카페',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    '베이커리 카페',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    '더 찾아보기',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),
            Divider(height: 2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
              child: Text(
                '크기별로 찾기',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Wrap(
              spacing: 8,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    '소형',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    '중형',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    '대형',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Divider(height: 2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
              child: Text(
                '분위기별로 찾기',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                InteriorCard(
                  tag: '산뜻한',
                  aroundCount: 1,
                  color: Colors.greenAccent.shade400.withOpacity(0.7),
                ),
                InteriorCard(
                  tag: '모노톤',
                  aroundCount: 3,
                  color: Colors.black12.withOpacity(0.7),
                ),
                InteriorCard(
                  tag: '레트로',
                  aroundCount: 3,
                  color: Colors.deepPurpleAccent.withOpacity(0.7),
                ),
                InteriorCard(
                  tag: '우드톤',
                  aroundCount: 3,
                  color: Colors.brown.withOpacity(0.9),
                ),
                InteriorCard(
                  tag: '모던',
                  aroundCount: 3,
                  color: Colors.indigo.withOpacity(0.9),
                ),
                InteriorCard(
                    tag: '빈티지',
                    aroundCount: 3,
                    color: Colors.amberAccent.withOpacity(0.9),
                    textColor: Colors.black),
                InteriorCard(
                  tag: '미니멀',
                  aroundCount: 3,
                  color: Colors.white,
                  textColor: Colors.black,
                ),
                Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          Text(
                            '더 찾아보기',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
