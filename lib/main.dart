import 'package:flutter/material.dart';
import 'package:flutterstudy/ListViewStudy.dart';

void main() => runApp(
//    MyApp()
//    TextStudy()
//    ContainerStudy()
//    ImageStudy()
//    ListViewVStudy()
    ListViewDStudy(items: List<String>.generate(20, (i) => "Item $i")));

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
          child: Container(
            child: new Image.network(
              'http://attach.bbs.miui.com/forum/201112/17/131254v0whw7sz05a1w7pd.jpg',
              fit: BoxFit.contain,
            ),
            width: 300,
            height: 200,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
