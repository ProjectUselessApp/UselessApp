import 'package:flutter/material.dart';
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
        backgroundColor: const Color(0x00030605),
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(  
          title: const Text('Useless App'),
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
        backgroundColor: const Color(0x00030605),
        appBar: AppBar(
          title: const Text('Useless App'),
          automaticallyImplyLeading: true,
          leading: IconButton(icon: const Icon(Icons.arrow_back),
          onPressed:() => Navigator.pop(context, false),  //Back button
          )
        ),
        body: Peli(),
      ),
    );
  }
}
