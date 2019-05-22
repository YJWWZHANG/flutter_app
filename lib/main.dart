import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CupertinoButton组件示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CupertinoButton组件示例"),
        ),
        body: Center(
          child: CupertinoButton(child: Text("CupertinoButton"), color: Colors.blue, onPressed: () {}),
        ),
      ),
    );
  }
}
