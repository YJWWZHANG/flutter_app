import 'package:flutter/material.dart';

void main() => runApp(TabBarSample());

class TabBarSample extends StatelessWidget {

  List<ItemView> items = <ItemView> [
    ItemView(title: "自驾", icon: Icons.directions_car),
    ItemView(title: "自行车", icon: Icons.directions_bike),
    ItemView(title: "轮船", icon: Icons.directions_boat),
    ItemView(title: "公交车", icon: Icons.directions_bus),
    ItemView(title: "火车", icon: Icons.directions_railway),
    ItemView(title: "步行", icon: Icons.directions_walk),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: items.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar选项卡示例"),
            bottom: TabBar(
              isScrollable: true,
              tabs: items.map((ItemView item) {
                return Tab(
                  text: item.title,
                  icon: Icon(item.icon)
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: items.map((ItemView item) {
              return Padding(
                padding: EdgeInsets.all(16.0),
                child: SelectedView(item: item),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class SelectedView extends StatelessWidget {
  ItemView item;
  SelectedView({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var testStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(item.icon, size: 128.0, color: testStyle.color),
            Text(item.title, style: testStyle)
          ],
        ),
      ),
    );
  }


}

class ItemView {
  String title;
  IconData icon;
  ItemView({this.title, this.icon});
}



