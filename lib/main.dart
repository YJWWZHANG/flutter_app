import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '基础列表示例',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("基础列表示例"),
        ),
        body: new ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: new Text("Phone"),
            ),
          ],
        )
      )
    );
  }
}


