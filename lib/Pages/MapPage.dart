import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Map')),
      body: Center(
        child: Image.asset('assets/shop_floor.png'),
      ),
    );
  }
}