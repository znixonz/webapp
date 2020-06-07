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
                VehicleListTile(
                  icon: Icons.arrow_downward,
                  color: Colors.transparent,
                  name: "Name",
                  tags: "Tags",
                  plate: "License Plate",
                  modal: "Modal",
                  type: "Type",
                  deport: "Deport",
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
                VehicleListTile(
                  icon: null,
                  color: Colors.green,
                  name: "Man Truck",
                  tags: "—",
                  plate: "D02844",
                  modal: "MAN TGA 33480",
                  type: "Truck",
                  deport: "—",
                ),
                VehicleListTile(
                  icon: null,
                  color: Colors.yellow,
                  name: "volkswagen",
                  tags: "—",
                  plate: "TG654FA",
                  modal: "A21832",
                  type: "Truck",
                  deport: "—",
                )
              ],
            ),
          ),
        ]));
  }
}

class VehicleListTile extends StatelessWidget {
  final String name, tags, plate, modal, type, deport;
  final Color color;
  final IconData icon;
  const VehicleListTile({
    this.icon,
    this.color,
    this.name,
    this.tags,
    this.plate,
    this.modal,
    this.type,
    this.deport,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(children: <Widget>[
        Expanded(
            child: Row(children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 10,
          ),
          SizedBox(width: 10),
          Text(name),
          Icon(icon),
        ])),
        Expanded(child: Text(tags)),
        Expanded(child: Text(plate)),
        Expanded(child: Text(modal)),
        Expanded(child: Text(type)),
        Expanded(child: Text(deport))
      ]),
    );
  }
}
