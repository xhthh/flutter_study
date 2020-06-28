import 'package:flutter/material.dart';
import 'package:flutterstudy/TextStudy.dart';

void main() => runApp(
//    TextStudy()
    MyApp()
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter  '),
        ),
        body: Center(
          child: Text(
            'Hello World',
          ),
        ),
      ),
    );
  }
}
