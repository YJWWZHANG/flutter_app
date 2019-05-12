import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "Card布局示例",
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = SizedBox(
      height: 250.0,
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                "深圳市南山区深南大道35号",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              subtitle: Text("创想科技有限公司"),
              leading: Icon(Icons.home, color: Colors.lightBlue),
            ),
            Divider(),
            ListTile(
              title: Text(
                "深圳市南山区深南大道32号",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              subtitle: Text("一木培训机构"),
              leading: Icon(Icons.school, color: Colors.lightBlue),
            ),
            Divider(),
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Card布局示例"),
      ),
      body: Center(
        child: card,
      ),
    );
  }
}
