// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuControlState();
  }
}

class _MenuControlState extends State<Menu> {
  final String _noppaPeli = "Pelaa Noppapeliä!";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
           splashColor: Colors.amberAccent,
           color: Colors.orange,
          onPressed: () {
            setState(() {
              //Hyppää noppapeli ikkunaan
            });
          },
          child: Text("Pelaa!")
        ),
      ),     
    );
  }
}

 

