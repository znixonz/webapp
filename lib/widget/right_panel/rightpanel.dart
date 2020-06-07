import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';

class RightPanel extends StatefulWidget {
  @override
  _RightPanelState createState() => _RightPanelState();
}

class _RightPanelState extends State<RightPanel> {
  GlobalKey<GoogleMapStateBase> _key = GlobalKey<GoogleMapStateBase>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              ],
                            ))
                      ],
                    )),
                  ],
                ))
              ],
            )
          ],
        ));
  }
}
