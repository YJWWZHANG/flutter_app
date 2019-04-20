import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '图标按钮组件示例',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("图标按钮组件示例"),
        ),
        body: new Center(
          child: new IconButton(
              icon: Icon(Icons.volume_up, size: 48.0),
              tooltip: "按下操作",
              onPressed: () {
                print("按下操作");
              }
          ),
        )
      )
    );
  }
}


