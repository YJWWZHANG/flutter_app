import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '文本控件',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("文本控件"),
        ),
        body: new Column(
          children: <Widget>[
            new Text(
              "红色+黑色删除块+25号",
              style: new TextStyle(
                color: const Color(0xffff0000),
                decoration: TextDecoration.lineThrough,
                decorationColor: const Color(0xff000000),
                fontSize: 25.0
              ),
            ),
            new Text(
              "橙色+下划线+24号",
              style: new TextStyle(
                color: const Color(0xffff9900),
                decoration: TextDecoration.underline,
                fontSize: 24.0
              ),
            ),
            new Text(
              "虚线上划线+23号+倾斜",
              style: new TextStyle(
                decoration: TextDecoration.overline,
                decorationStyle: TextDecorationStyle.dashed,
                fontSize: 23.0,
                fontStyle: FontStyle.italic
              ),
            ),
            new Text(
              "43号+加粗",
              style: new TextStyle(
                fontSize: 23.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                letterSpacing: 6.0
              ),
            ),
          ],
        ),
      )
    );
  }
}


