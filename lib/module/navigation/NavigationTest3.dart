import 'package:flutter/material.dart';

/*
 */
class NavigationTest3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: '页面跳转返回数据', home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('找小姐姐要电话'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToXiaoJieJie(context);
      },
      child: Text('去找小姐姐'),
    );
  }

  _navigateToXiaoJieJie(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => XiaoJieJie()));
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我是小姐姐'),),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('大长腿小姐姐'),
              onPressed: () {
                Navigator.pop(context, '大长腿小姐姐：18888888888');
              },
            ),
            RaisedButton(
              child: Text('大奈子小姐姐'),
              onPressed: () {
                Navigator.pop(context, '大奈子小姐姐：16666666666');
              },
            ),
          ],
        ),
      ),
    );
  }
}
