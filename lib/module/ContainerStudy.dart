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

/*
  垂直方向布局
  灵活与不灵活 Expanded，被Expanded包裹相当于android中的权重 weight = 1，除了其他元素，剩下都是自己的
 */
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

//垂直方向布局
class ColumnContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('垂直方向布局'),
        ),
        body: Center(
          child: Column(
            //副轴，水平方向，这个center相当于android中的自适应布局的子view居中，并不是相对于屏幕
            crossAxisAlignment: CrossAxisAlignment.center,
            //主轴，根据布局方向，垂直方向布局，主轴也是垂直方向
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Looper: '),
              Expanded(
                //相当于权重，被Expanded包裹，处了其他元素，剩下的都是自己的，如果想让被包裹的居中，再用center
                child: Center(child: Text('MessageQueue: 是个队列，负责消息的存储;')),
              ),
              Text('Handler: 负责发送并处理消息，面向开发者。'),
            ],
          ),
        ),
      ),
    );
  }
}

//层叠布局
class StackContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              'http://img.08087.cc/uploads/20190228/18/1551348867-SPUOrkysqB.jpeg'),
          radius: 100,
        ),
        new Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('卡通动漫'),
        )
      ],
    );

    return MaterialApp(
      title: 'Stack Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('层叠布局'),
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
