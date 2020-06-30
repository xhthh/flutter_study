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
            alignment: Alignment.topLeft,
            width: 500.0,
            height: 400.0,
            //color: Colors.lightBlue,
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
            margin: const EdgeInsets.fromLTRB(20.0, 0.0, 40.0, 0.0),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.yellow, Colors.purple]),
                border: Border.all(width: 5.0, color: Colors.red)),
          ),
        ),
      ),
    );
  }
}

class RowContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('水平方向布局'),
        ),
        body: Row(
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text('Button'),
            ),
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                color: Colors.orangeAccent,
                child: Text('Ora Button'),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.lightBlue,
              child: Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}
