import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '图标组件示例',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("图标组件示例"),
        ),
        body: new Icon(
          Icons.phone, color: Colors.green[500], size: 80.0,
        )
      )
    );
  }
}


