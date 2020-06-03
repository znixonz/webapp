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
              ),
              Expanded(
                  flex: 6,
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
                    Container(
                      height: 500,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                            title: Row(children: <Widget>[
                              Expanded(
                                  child: Row(children: [
                                Text("Name"),
                                Icon(Icons.arrow_downward)
                              ])),
                              Expanded(child: Text("Tags")),
                              Expanded(child: Text("License Plate")),
                              Expanded(child: Text("Modal")),
                              Expanded(child: Text("Type")),
                              Expanded(child: Text("Deport"))
                            ]),
                          ),
                          ListTile(
                            title: Row(children: <Widget>[
                              Expanded(
                                  child: Row(children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 10,
                                ),
                                SizedBox(width: 10),
                                Text("KAMAZ"),
                              ])),
                              Expanded(child: Text("—")),
                              Expanded(child: Text("197TYS")),
                              Expanded(child: Text("65117-30110")),
                              Expanded(child: Text("Truck")),
                              Expanded(
                                  child: Row(
                                children: [
                                  Icon(Icons.edit),
                                  Icon(Icons.restore_from_trash)
                                ],
                              ))
                            ]),
                          ),
                          ListTile(
                            title: Row(children: <Widget>[
                              Expanded(
                                  child: Row(children: [
                                CircleAvatar(
                                  backgroundColor: Colors.greenAccent,
                                  radius: 10,
                                ),
                                SizedBox(width: 10),
                                Text("Man Truck"),
                              ])),
                              Expanded(child: Text("—")),
                              Expanded(child: Text("D02844")),
                              Expanded(child: Text("MAN TGA 33480")),
                              Expanded(child: Text("Truck")),
                              Expanded(child: Text("—"))
                            ]),
                          ),
                          ListTile(
                            title: Row(children: <Widget>[
                              Expanded(
                                  child: Row(children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  radius: 10,
                                ),
                                SizedBox(width: 10),
                                Text("Volvasgen "),
                              ])),
                              Expanded(child: Text("—")),
                              Expanded(child: Text("TG654FA")),
                              Expanded(child: Text("A21832")),
                              Expanded(child: Text("Truck")),
                              Expanded(child: Text("—"))
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ])),
              Expanded(
                  flex: 2,
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
