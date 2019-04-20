import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '水平列表示例',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("水平列表示例"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.lightBlue,
              ),
              Container(
                width: 160.0,
                color: Colors.amber,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
                child: Column(
                  children: <Widget>[
                    Text(
                      "水平",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36.0
                      ),
                    ),
                    Text(
                      "列表",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36.0
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 160.0,
                color: Colors.deepPurple,
              ),
              Container(
                width: 160.0,
                color: Colors.black,
              ),
              Container(
                width: 160.0,
                color: Colors.pinkAccent,
              ),
            ],
          ),
        )
      )
    );
  }
}


