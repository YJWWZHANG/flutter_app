import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '使用第三方包示例',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('使用第三方包示例'),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: () {
              const url = 'https://www.baidu.com';
              launch(url);
            },
            child: new Text('打开百度'),
          ),
        ),
      )
    );
  }
}


