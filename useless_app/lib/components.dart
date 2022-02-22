// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'main.dart';

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
          margin: EdgeInsets.only(top: 150.0),
          child: Center(
            child: RaisedButton(  
              splashColor: Colors.amberAccent,
              color: Colors.orange,
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Noppapeli()),
                );
              },
              child: Text("Pelaa!"),
            ),
          ),
        ),
        Container(child: Text(_noppaPeli)),
        Container(
           margin: EdgeInsets.only(top: 10.0),
          child: Center(
            child: RaisedButton(  
              splashColor: Colors.amberAccent,
              color: Colors.orange,
              onPressed: () {
                setState(() {
                  //Sää
                });
              },
              child: Text("Katso sää!"),
            ),
          ),
        ),
        Container(child: Text("Katso sää!")),
      ],
    );
  }
}
