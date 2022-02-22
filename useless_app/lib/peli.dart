import 'dart:math';

import 'package:flutter/material.dart';

// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_unnecessary_containers

class Peli extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PeliControlState();
  }
}

class _PeliControlState extends State<Peli> {
  
  static var listImages = [
      "assets/dice_1.png",
      "assets/dice_2.png",
      "assets/dice_3.png",
      "assets/dice_4.png",
      "assets/dice_5.png",
      "assets/dice_6.png"
  ];

  static var _random = Random();
  var imageToShow = listImages[_random.nextInt(listImages.length)];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 50.0),
          child: Center( 
          child: Image.asset(imageToShow.toString(), width: 400, height: 446),
          )
        )
      ],
    );
  }
}
