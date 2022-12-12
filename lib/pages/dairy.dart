import 'package:cafe_app/pages/dairyview.dart';
import 'package:flutter/material.dart';

class DiaryPage extends StatefulWidget {
  const DiaryPage({super.key});

  @override
  createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '내 다이어리',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(child: Divider())
                    ],
                  ),
                  SizedBox(height: 10),
                  ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 0,
                        child: ListTile(
                          tileColor: Colors.white,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DairyViewPage(),
                              ),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          trailing: Icon(Icons.chevron_right),
                          horizontalTitleGap: 0,
                          title:
                              Text('학원갔다 오는 길', style: TextStyle(fontSize: 18)),
                          subtitle: Text('스타벅스 대구죽곡점, 11월 8일'),
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
                          trailing: Icon(Icons.chevron_right),
                          horizontalTitleGap: 0,
                          title: Text(
                            '다이어리 제목',
                            style: TextStyle(fontSize: 18),
                          ),
                          subtitle: Text('장소, 일자'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 28, horizontal: 24),
            child: FloatingActionButton(
              tooltip: '새로 쓰기',
              heroTag: false,
              onPressed: () async {},
              child: const Icon(Icons.add),
            ),
          ),
        ),
      ],
    );
  }
}
