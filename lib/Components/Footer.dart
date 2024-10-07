import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const Footer({required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Main',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Map',
        ),
      ],
      onTap: onItemTapped,
    );
  }
}