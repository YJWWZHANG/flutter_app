import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyHomePage(),
      )
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
  }

class _MyHomePageState extends State<MyHomePage> {

  var _widgetOptions = [
    Text("Index 0：信息"),
    Text("Index 1：通讯录"),
    Text("Index 2：发现"),
  ];
  int _selectIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar示例"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text("信息")),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), title: Text("通讯录")),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("发现")),
        ],
        currentIndex: _selectIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectIndex = value;
    });
  }
}






