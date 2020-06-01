import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("vehicle"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.white,
        child: Row(

        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color:Colors.red,backgroundColor: Colors.white,
        items: <Widget>[
        IconButton(onPressed: (){},icon: Icon(Icons.menu),),
        Icon(Icons.add_circle_outline, size: 20,color: Colors.white,),
      ],
    ),
    );
  }
}


