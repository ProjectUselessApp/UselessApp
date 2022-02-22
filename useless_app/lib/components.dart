// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Components extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ComponentControlState();
  }
}

class _ComponentControlState extends State<Components> {
  final String _noppaPeli = "Pelaa Noppapeliä!";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Center(
            child: RaisedButton(
              splashColor: Colors.amberAccent,
              color: Colors.orange,
              onPressed: () {
                setState(() {
                  //Mene noppapeli ikkunaan
                });
              },
              child: Text("Pelaa!"),
            ),
          ),
        ),
        Container(child: Text("Pelaa noppapeliä!"))
      ],
    );
  }
}
