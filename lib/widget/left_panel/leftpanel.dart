import 'package:flutter/material.dart';

class LeftPanel extends StatefulWidget {
  @override
  _LeftPanelState createState() => _LeftPanelState();
}

class _LeftPanelState extends State<LeftPanel> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: DefaultTabController(
          length: 3,
          child: Container(
            color: Colors.red[400],
            child: Column(
              children: [
                TabBar(
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(text: "All"),
                    Tab(text: "Online"),
                    Tab(text: "Offline")
                  ],
                ),
                Expanded(
                    child: TabBarView(
                  children: <Widget>[
                    Container(
                        color: Colors.white,
                        child: ListView(
                          children: list,
                        )),
                    Container(
                        color: Colors.white,
                        child: ListView(
                          children: list,
                        )),
                    Container(
                        color: Colors.white,
                        child: ListView(
                          children: list,
                        )),
                  ],
                )),
              ],
            ),
          )),
    );
  }
}

List<Widget> list = <Widget>[
  ListTile(
    title: Text("1684", style: TextStyle(fontWeight: FontWeight.bold)),
    subtitle: Text("online"),
  ),
  ListTile(
      title: Text(
        "6311",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text("Online")),
  ListTile(
      title: Text("3564", style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("Online")),
  ListTile(
      title: Text("5413", style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("Online")),
  ListTile(
      title: Text("4211", style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("Online")),
  ListTile(
      title: Text("6514", style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("Online"))
];
