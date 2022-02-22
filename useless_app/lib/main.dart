import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'components.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        ),
        body: Text("Toinen sivu"),
      ),
    );
  }
}
