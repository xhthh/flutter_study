import 'package:flutter/material.dart';

/*
    底部导航栏，中间有个加号
    使用 BottomAppBar
 */
class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'xht',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      //这个属性用于摆放中间组件的位置
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.airport_shuttle),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
