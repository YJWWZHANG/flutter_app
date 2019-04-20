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
      title: '长列表示例',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("长列表示例"),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text(
                "${items[index]}"
              ),
            );
          },
        )
      )
    );
  }
}


