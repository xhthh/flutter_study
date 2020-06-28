import 'package:flutter/material.dart';

class ListViewStudy extends StatelessWidget {
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
