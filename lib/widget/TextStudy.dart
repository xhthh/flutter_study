import 'package:flutter/material.dart';

class TextStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Text',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Text'),
        ),
        body: Center(
          child: Text(
            'Retrofit\nRetrofit充当一个适配器的角色，将一个Java接口翻译成Http请求，然后通过OkHttp去发送这个请求。',
            textAlign: TextAlign.left,
            maxLines: 5,
//            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 255, 125, 125),
//                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid),
          ),
        ),
      ),
    );
  }
}
