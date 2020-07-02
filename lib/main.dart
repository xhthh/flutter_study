import 'package:flutter/material.dart';

import 'navigation/BottomNavigation.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 底部导航栏',
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}
