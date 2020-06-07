import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<GoogleMapStateBase> _key = GlobalKey<GoogleMapStateBase>();
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
              // Left Panel
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
              // Middle Panel
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
              // Right Panel
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 300,
                        width: 300,
                        child: GoogleMap(
                          key: _key,
                          initialZoom: 12,
                          mapType: MapType.roadmap,
                          initialPosition:
                              GeoCoord(3.1711885963699276, 101.6655700046132),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                child: Column(children: [
                                  Image(
                                    height: 100,
                                    width: 100,
                                    image: NetworkImage(
                                        'https://c8.alamy.com/comp/P6W7NW/blue-mercedes-benz-actros-tank-truck-of-kuljetusliike-markus-hanninen-oy-hauls-load-along-highway-on-sunny-day-of-summer-salo-finland-july-1-2018-P6W7NW.jpg'),
                                  ),
                                  Container(
                                      height: 150,
                                      width: 100,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.green,
                                            radius: 5,
                                          ),
                                          SizedBox(width: 10),
                                          Text("Online")
                                        ],
                                      ))
                                ]),
                              ),
                              Container(
                                  height: 250,
                                  width: 200,
                                  child: Column(
                                    children: [
                                      Container(
                                          width: 170,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 5),
                                              Text(
                                                "Name",
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Text("KAMAZ")
                                            ],
                                          )),
                                      Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: 170,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 5),
                                              Text(
                                                "License Plate ",
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Text("197TYS")
                                            ],
                                          )),
                                      Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: 170,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 5),
                                              Text(
                                                "Status",
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Text("StandStill")
                                            ],
                                          )),
                                      Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: 170,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 5),
                                              Text(
                                                "Fuel ",
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Text("—")
                                            ],
                                          )),
                                      Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: 170,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 5),
                                              Text(
                                                "Mileage ",
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Text("51313.70km")
                                            ],
                                          )),
                                      Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: 170,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 5),
                                              Text(
                                                "Insurance ",
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Text("—")
                                            ],
                                          )),
                                    ],
                                  ))
                            ],
                          ),
                          SingleChildScrollView(
                              child: Column(
                            children: <Widget>[
                              Container(
                                  child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Column(children: [
                                      Image(
                                        height: 100,
                                        width: 100,
                                        image: NetworkImage(
                                            'https://c8.alamy.com/comp/P6W7NW/blue-mercedes-benz-actros-tank-truck-of-kuljetusliike-markus-hanninen-oy-hauls-load-along-highway-on-sunny-day-of-summer-salo-finland-july-1-2018-P6W7NW.jpg'),
                                      ),
                                      Container(
                                          height: 30,
                                          width: 100,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.green,
                                                radius: 5,
                                              ),
                                              SizedBox(width: 10),
                                              Text("Online")
                                            ],
                                          ))
                                    ]),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 100,
                                      width: 200,
                                      child: Column(
                                        children: [
                                          Container(
                                              width: 170,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "Name",
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                  ),
                                                  Text("KAMAZ")
                                                ],
                                              )),
                                          Container(
                                              margin: EdgeInsets.only(top: 5),
                                              width: 170,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "License Plate ",
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                  ),
                                                  Text("197TYS")
                                                ],
                                              )),
                                        ],
                                      ))
                                ],
                              )),
                            ],
                          ))
                        ],
                      )
                    ],
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
