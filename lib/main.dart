import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Demo',
      home: new Center(
        child: Image.network(
          "https://img4.duitang.com/uploads/item/201208/30/20120830092541_GsL4y.jpeg",
          fit: BoxFit.fill,
        )
      )
    );
  }
}


