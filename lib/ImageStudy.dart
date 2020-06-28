import 'package:flutter/material.dart';

class ImageStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Image',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Image'),
        ),
        body: Center(
          child: Container(
            child: Image.network(
              'http://attach.bbs.miui.com/forum/201112/17/131254v0whw7sz05a1w7pd.jpg',
//              fit: BoxFit.contain,//全图显示，显示原比例，可能会有空隙。
//              fit: BoxFit.fill,//全图显示，图片会被拉伸，并充满父容器。
//              fit: BoxFit.fitWidth,//宽度充满（横向充满），显示可能拉伸，可能裁切。
//              fit: BoxFit.fitHeight,//高度充满（竖向充满）,显示可能拉伸，可能裁切。
//              fit: BoxFit.cover,//显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）
//              fit: BoxFit.scaleDown, //效果和contain差不多，但是此属性不允许显示超过源图片大小，可小不可大。
//              color: Colors.greenAccent,
//              colorBlendMode: BlendMode.lighten,
              repeat: ImageRepeat.repeatX,
            ),
            width: 250,
            height: 200,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
