import 'package:flutter/material.dart';

class DrawerV1Widget extends StatelessWidget {
  const DrawerV1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountEmail: Text("user2023@gmail.com"),
            accountName: Text("GitHub"),
            currentAccountPicture: CircleAvatar(
              child: Text("CS"),
            ),
          ),
          // -- widget_page --
          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Page 1'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/page1');
                // Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Page 2'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/page2');
                // Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Page 3'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/page3');
                // Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Page 4'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/page4');
                // Navigator.pop(context);
              }),
          // -- images_page --
        ],
      ),
    );
  }
}
