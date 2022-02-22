import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'components.dart';
import 'drawer.dart';
import 'peli.dart';
main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(  
          title: Text('Useless App'),
        ),
        body: Components(),
      ),
    );
  }
}

class Noppapeli extends StatelessWidget {
  const Noppapeli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Useless App'),
          automaticallyImplyLeading: true,
          leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed:() => Navigator.pop(context, false),  //Back button
          )

        ),
        body: Peli(),
      ),
    );
  }
}
