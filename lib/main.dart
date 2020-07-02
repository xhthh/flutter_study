import 'package:flutter/material.dart';

import 'module/ContainerStudy.dart';

void main() {
  runApp(MaterialApp(
    title: '导航演示01',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen()));
          },
          child: Text('查看商品详情页'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情页'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
