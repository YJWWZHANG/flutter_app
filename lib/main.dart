import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    title: "Drawer抽屉组件示例",
    home: LayoutDemo(),
  )
);

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer抽屉组件示例"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("示例"),
              accountEmail: Text("123@qq.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/1.jpeg"),
              ),
              onDetailsPressed: () {},
              otherAccountsPictures: <Widget>[
                Container(
                  child: Image.asset("images/1.jpeg"),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.color_lens)),
              title: Text("个性装扮"),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.phone)),
              title: Text("我的相册"),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.wifi)),
              title: Text("免流量特权"),
            ),
          ],
        ),
      ),
    );
  }
}




