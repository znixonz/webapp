import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownvalue = 'items1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("vehicle"),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
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
              ),
              Expanded(
                  child: Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(children: <Widget>[
                          Container(
                            height: 50,
                            child: Center(child: Text("Group By:")),
                          ),
                          SizedBox(width: 20),
                          DropdownButton<String>(
                              value: dropdownvalue,
                              items: <String>['items1', 'items2', 'items3']
                                  .map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownvalue = newValue;
                                });
                              }),
                        ]),
                      ),
                      Icon(Icons.settings)
                    ],
                  ),
                ),
              ])),
              Expanded(
                  child: Container(
                color: Colors.cyan,
              ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.red,
        height: 45,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(
            Icons.menu,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.add_circle_outline,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.restore_from_trash,
            size: 20,
            color: Colors.white,
          )
        ],
      ),
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
