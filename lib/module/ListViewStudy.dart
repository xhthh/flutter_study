import 'package:flutter/material.dart';

class ListViewVStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to ListView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Widget'),
        ),
        body: ListView(
          children: <Widget>[
            /*ListTile(
              leading: Icon(Icons.star),
              title: Text('star'),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('star'),
            )*/

            new Image.network(
                'http://attach.bbs.miui.com/forum/201112/17/131254v0whw7sz05a1w7pd.jpg'),
            new Image.network(
                'https://huyaimg.msstatic.com/cdnimage/gamebanner/phpoEpJkK1593008934.jpg'),
            new Image.network(
                'http://attach.bbs.miui.com/forum/201112/17/131254v0whw7sz05a1w7pd.jpg'),
          ],
        ),
      ),
    );
  }
}

//横向
class ListViewHStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to ListView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Widget'),
        ),
        body: Center(
          child: Container(
            height: 200.0,
            child: MyList(),
          ),
        ),
      ),
    );
  }
}

//动态传递数据更新列表
class ListViewDStudy extends StatelessWidget {
  final List<String> items;

  ListViewDStudy({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to ListView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Widget'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.grey,
        ),
        new Container(
          width: 180.0,
          color: Colors.yellow,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 180.0,
          color: Colors.purple,
        ),
      ],
    );
  }
}
