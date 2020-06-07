import 'package:flutter/material.dart';

class MiddlePanel extends StatefulWidget {
  @override
  _MiddlePanelState createState() => _MiddlePanelState();
}

class _MiddlePanelState extends State<MiddlePanel> {
  String dropdownvalue = 'items1';
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
        ]));
  }
}
