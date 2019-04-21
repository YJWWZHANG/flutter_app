import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      title: "MeterialApp示例",
      routes: {
        "/first": (BuildContext context) => FirstPage(),
        "/second": (BuildContext context) => SecondPage(),
      },
      initialRoute: "/first",
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("这是第二页"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/first");
          },
          child: Text(
            "这是第二页",
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("这是第一页"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/second");
          },
          child: Text(
            "这是第一页",
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
  }

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MeterialApp示例"),
      ),
      body: Center(
        child: Text(
          "主页",
          style: TextStyle(fontSize: 28.0),
        ),
      ),
    );
  }
}






