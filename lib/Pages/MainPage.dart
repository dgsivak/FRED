import 'package:flutter/material.dart';
import 'package:fred/Components/Footer.dart';
import 'NotificationPage.dart';
import 'MapPage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    NotificationsPage(),
    MapPage(),
  ];

  void _onNavBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Footer(
        selectedIndex: _currentIndex,
        onItemTapped: _onNavBarTapped,
      ),
    );
  }
}