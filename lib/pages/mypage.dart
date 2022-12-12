import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  createState() => _DiaryPageState();
}

class _DiaryPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                CircleAvatar(
                  radius: 30,
                ),
                SizedBox(width: 12),
                Text(
                  '사용자이름',
                  style: TextStyle(fontSize: 24, color: Colors.black87),
                )
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text(
                  '내 정보',
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
          ],
        ),
      ),
    );
  }
}
