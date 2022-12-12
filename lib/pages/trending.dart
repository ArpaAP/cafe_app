import 'package:flutter/material.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({super.key});

  @override
  createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  String selectedFilter = '전체';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 8,
                children:
                    ['전체', '10대 인기', '20대 인기', '30대 인기', '40대 인기', '남성', '여성']
                        .map(
                          (one) => OutlinedButton(
                            onPressed: () {
                              setState(() {
                                selectedFilter = one;
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: selectedFilter == one ? Colors.black.withOpacity(0.08)  : Colors.white,
                              foregroundColor: Colors.black87,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: Text(one),
                          ),
                        )
                        .toList(),
              ),
            ),
            Divider(height: 16),
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '주변 트렌드 순위',
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.deepPurple),
                    child: Text(
                      '더보기',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                  child: ListTile(
                    tileColor: Colors.white,
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    leading: Icon(Icons.emoji_events, size: 28),
                    trailing: Icon(Icons.chevron_right),
                    horizontalTitleGap: 0,
                    title: Text('스타벅스 대구죽곡점', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                  child: ListTile(
                    tileColor: Colors.white,
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    leading: SizedBox(
                      width: 30,
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 24, color: Colors.black54),
                        ),
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right),
                    horizontalTitleGap: 0,
                    title: Text('이디야커피 대구대실역점', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                  child: ListTile(
                    tileColor: Colors.white,
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    leading: SizedBox(
                      width: 30,
                      child: Center(
                        child: Text(
                          '3',
                          style: TextStyle(fontSize: 24, color: Colors.black54),
                        ),
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right),
                    horizontalTitleGap: 0,
                    title: Text('...', style: TextStyle(fontSize: 15)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '인기 프랜차이즈',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.deepPurple),
                    child: Text(
                      '더보기',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                  child: ListTile(
                    tileColor: Colors.white,
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    leading: Icon(Icons.emoji_events, size: 28),
                    trailing: Icon(Icons.chevron_right),
                    horizontalTitleGap: 0,
                    title: Text('스타벅스', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                  child: ListTile(
                    tileColor: Colors.white,
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    leading: SizedBox(
                      width: 30,
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 24, color: Colors.black54),
                        ),
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right),
                    horizontalTitleGap: 0,
                    title: Text('투썸플레이스', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                  child: ListTile(
                    tileColor: Colors.white,
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    leading: SizedBox(
                      width: 30,
                      child: Center(
                        child: Text(
                          '3',
                          style: TextStyle(fontSize: 24, color: Colors.black54),
                        ),
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right),
                    horizontalTitleGap: 0,
                    title: Text('메가커피', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                  child: ListTile(
                    tileColor: Colors.white,
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    leading: SizedBox(
                      width: 30,
                      child: Center(
                        child: Text(
                          '4',
                          style: TextStyle(fontSize: 24, color: Colors.black54),
                        ),
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right),
                    horizontalTitleGap: 0,
                    title: Text('이디야커피', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                  child: ListTile(
                    tileColor: Colors.white,
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    leading: SizedBox(
                      width: 30,
                      child: Center(
                        child: Text(
                          '5',
                          style: TextStyle(fontSize: 24, color: Colors.black54),
                        ),
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right),
                    horizontalTitleGap: 0,
                    title: Text('빽다방', style: TextStyle(fontSize: 15)),
                  ),
                ),
                ListTile(
                  tileColor: Colors.transparent,
                  onTap: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  title: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '더보기',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
