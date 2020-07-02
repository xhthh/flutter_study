import 'package:flutter/material.dart';

class GridViewStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to GridView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to GridView'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 12.0,
            childAspectRatio: 1.5,
          ),
          children: <Widget>[
            new Image.network(
              'http://img5.mtime.cn/mg/2020/06/28/091951.27978491_285X160X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mg/2020/06/27/075815.13969683_285X160X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mg/2020/06/25/131828.89957925_285X160X4.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://img5.mtime.cn/mg/2020/06/28/145933.91842263_285X160X4.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
