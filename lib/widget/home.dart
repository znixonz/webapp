import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'left_panel/leftpanel.dart';
import 'middle_panel/middlepanel.dart';
import 'right_panel/rightpanel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            children: <Widget>[LeftPanel(), MiddlePanel(), RightPanel()],
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
