import 'package:flutter/material.dart';
//import 'package:test_start_dkim230109/tabs/tab_cart.dart';
import 'package:test_gift_dkim230117/tabs/tab_home.dart';
//import 'package:test_start_dkim230109/tabs/tab_search.dart';
//import 'package:test_start_dkim230109/tabs/tab_profile.dart';
import 'package:test_gift_dkim230117/screens/screen_gift_homepage.dart';

class ItemScreen extends StatefulWidget {
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  int _currentIndex = 0;
  final List<Widget> _tabs = [
    HomeTab(),
//    SearchTab(),
//    CartTab(),
//    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('선물몰입니다  trung tâm quà tặng'),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontSize: 12),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 1) {
            setState(() {
              _currentIndex = 0;
            });
            Navigator.pushNamed(context, '/search');
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '검색'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: '장바구니'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '프로필'),
        ],
      ),
      body: _tabs[_currentIndex],
    );
  }
}