import 'package:flutter/material.dart';
import 'package:flutterstudy/TextStudy.dart';

import 'ContainerStudy.dart';

void main() => runApp(
//    TextStudy()
    ContainerStudy()
//    MyApp()
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Container',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Container'),
        ),
        body: Center(
          child: Text('主页面'),
        ),
      ),
    );
  }
}
