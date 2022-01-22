import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {

  final int days = 30;
  final String name = "Pritesh";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
 title:Text("Blood Donation App"),
      ),
        body: Center(
          child: Container(
            child: Text("welcome  to  $days  days of flutter by $name"),
          ),
        ),
   
      drawer: Drawer(),
    );
  }
}