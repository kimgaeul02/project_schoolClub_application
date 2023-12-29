import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:matdongsan/page/home.dart';
import 'package:matdongsan/page/feed.dart';
import 'package:matdongsan/page/post.dart';
import 'package:matdongsan/page/favorite.dart';
import 'package:matdongsan/page/user.dart';

class App extends StatefulWidget {
  App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    Home(),
    FeedPage(),
    PostPage(),
    FavoritePage(),
    UserPage(),
  ];

  @override
  void initstate() {
    super.initState();
  }

  /*
   * App Bar
   */
  PreferredSizeWidget _appbarWidget() {
    return AppBar(
      backgroundColor: Color(0xff46A3FB),
      title: Text('Yonsei Club APP'),
      centerTitle: true,
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            print('notification button is clicked');
          },
        ),
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            print('setting button is clicked');
          },
        ),
      ],
    );
  }

  /*
   * Bottom Navigation Bar
   */
  Widget _bottomNavigationBarwidget() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(
          () {
            _selectedIndex = value;
          },
        );
      },
      items: [
        _bottomNavigationBarItem("home", "홈"),
        _bottomNavigationBarItem("notes", "피드"),
        _bottomNavigationBarItem("chat", "게시"),
        _bottomNavigationBarItem("heart", "좋아요"),
        _bottomNavigationBarItem("user", "마이페이지"),
      ],
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      String iconName, String label) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset("assets/svg/${iconName}_off.svg", width: 22),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD4EBFD),
      appBar: _appbarWidget(),
      drawer: const Drawer(),
      body: pages[_selectedIndex],
      bottomNavigationBar: _bottomNavigationBarwidget(),
    );
  }
}
