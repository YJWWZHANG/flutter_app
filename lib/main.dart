import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'http请求示例',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('http请求示例'),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: () {
              var url = 'http://httpbin.org/';
              http.get(url).then((response) {
                print("状态：${response.statusCode}");
                print("正文：${response.body}");
              });
            },
            child: new Text('发起http请求'),
          ),
        ),
      )
    );
  }
}


