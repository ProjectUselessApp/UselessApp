import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 5);

  const NavigationDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Uutiset', textScaleFactor: 2),
          ),
          ListTile(
            title: const Text('Yle'),
            onTap: () async {
              var url = "https://yle.fi/";
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw "Failed to open yle";
              }
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('iltasanomat'),
            onTap: () async {
              var url = "https://iltasanomat.fi/";
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw "Failed to open iltasanomat";
              }
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
