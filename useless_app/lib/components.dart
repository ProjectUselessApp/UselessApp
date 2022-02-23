// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:convert';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';

class Components extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ComponentControlState();
  }
}

class _ComponentControlState extends State<Components> {
  final String _noppaPeli = "Pelaa Noppapeliä!";

 
  void Weather() async {
  var request = await HttpClient()
      .getUrl(Uri.parse('http://weather.willab.fi/weather.xml'));
  request.persistentConnection = false;
  request.followRedirects = true;
  var response = await request.close();

  await for (var contents in response.transform(Utf8Decoder())) {
    final regExp = RegExp(r".*tempnow.*");
    final temperature = regExp.stringMatch(contents).toString();
    List<String> temperatureParts = temperature.split(RegExp(r"[<>]"));
    
    Fluttertoast.showToast(
      msg: "Linnanmaan sää: " + temperatureParts[2],
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      fontSize: 16.0,
    );

  }
}
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
                //Opens a Toast window with Temperature
                Weather();
              },
              child: Text("Katso sää!"),
            ),
          ),
        ),
        Container(child: Text("Katso sää!")),
         Container(
        margin: EdgeInsets.only(top: 40.0),
        child: Image.asset("assets/Falling_money.gif"),
        ),
      ],
    );
  }
}
