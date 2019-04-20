import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  items: new List<String>.generate(500, (i) => "Item $i")
));

class MyApp extends StatelessWidget {

  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '网络列表示例',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("网络列表示例"),
        ),
        body: new GridView.count(
          primary: false,
          padding: EdgeInsets.all(20.0),
          crossAxisSpacing: 30.0,
          crossAxisCount: 3,
          children: <Widget>[
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
            const Text("AAAAAAAAAAAAAAA"),
          ],
        )
      )
    );
  }
}


