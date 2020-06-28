import 'package:flutter/material.dart';

class ContainerStudy extends StatelessWidget {
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
            child: Text(
              'Hello 许一伊',
              style: TextStyle(fontSize: 40.0, color: Colors.red),
            ),
            alignment: Alignment.center,
            width: 500.0,
            height: 400.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}