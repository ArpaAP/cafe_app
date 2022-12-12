import 'package:flutter/material.dart';

class DairyViewPage extends StatefulWidget {
  const DairyViewPage({super.key});

  @override
  createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DairyViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'asdf',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 52,
        backgroundColor: Color.fromRGBO(249, 252, 255, 1),
        toolbarOpacity: 0.8,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            child: Text('asdf'),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 28, horizontal: 24),
              child: FloatingActionButton(
                tooltip: '수정하기',
                heroTag: false,
                onPressed: () async {},
                child: const Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
