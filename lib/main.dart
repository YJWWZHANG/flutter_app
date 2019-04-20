import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RaisedButton示例',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("RaisedButton示例"),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: () {},
            child: new Text("RaisedButton示例"),
          )
        )
      )
    );
  }
}


