import 'package:cafe_app/pages/dairy.dart';
import 'package:cafe_app/pages/discovery.dart';
import 'package:cafe_app/pages/map.dart';
import 'package:cafe_app/pages/mypage.dart';
import 'package:cafe_app/pages/trending.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafinder',
      theme: ThemeData(
        fontFamily: 'Pretendard',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
          secondary: Colors.grey,
          surface: Colors.black,
          background: Colors.black,
        ),
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        scaffoldBackgroundColor: Color.fromRGBO(235, 237, 240, 1),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _pageController = PageController();
  int _currentIndex = 0;

  final List<Widget> pages = [
    MapPage(),
    DiscoveryPage(),
    TrendingPage(),
    DiaryPage(),
    MyPage(),
  ];
  final List<String> asdf = ['카페맵', '디스커버리', '트렌드', '다이어리', 'MY'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          asdf[_currentIndex],
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 52,
        backgroundColor: Color.fromRGBO(249, 252, 255, 1),
        toolbarOpacity: 0.8,
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          physics: BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey.shade600,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: '카페맵',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: '디스커버리',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: '트렌드',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet_outlined),
            label: '다이어리',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '마이페이지',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOutExpo,
          );
        },
      ),
    );
  }
}
