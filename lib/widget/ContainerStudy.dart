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

/*
    层叠布局
    对齐方式  alignment FractionalOffset x轴 y轴 0~1，相当于按比例
    使用 positioned 相当于相对布局，通过四个点位 指定距离
 */
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
        new Positioned(
          top: 10.0,
          left: 60,
          child: Text('卡通动漫'),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Text('美少女'),
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

/*
    卡片式布局

 */
class CardContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              '河北省定州市大鹿庄乡伯堡村',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('许一伊'),
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          new Divider(),
          ListTile(
            title: Text(
              '北京市昌平区北七家镇白庙村',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('许海涛'),
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          new Divider(),
          ListTile(
            title: Text(
              '北京市海淀区中航广场A2',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('xht'),
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Card Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('卡片式布局'),
        ),
        body: Center(
          child: card,
        ),
      ),
    );
  }
}
