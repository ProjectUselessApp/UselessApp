import 'dart:math';

import 'package:flutter/material.dart';

// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_unnecessary_containers

class Peli extends StatefulWidget {
  const Peli({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PeliControlState();
  }
}

class _PeliControlState extends State<Peli> {
  int dice = Random().nextInt(6) + 1;

  void rollDice() {
    setState(() {
      dice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(child: Image.asset("assets/dice_$dice.png")),
        RaisedButton(
            child: Text("Heitä noppaa", textScaleFactor: 2),
            onPressed: () {
              rollDice();
            })
      ],
    );
  }
}
