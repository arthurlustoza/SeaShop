import 'package:flutter/material.dart';

class SeaShopDrawer extends StatefulWidget {
  const SeaShopDrawer({super.key});

  @override
  State<SeaShopDrawer> createState() => _SeaShopDrawerState();
}

class _SeaShopDrawerState extends State<SeaShopDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF90CAF9)),
            child: Text(
              'Menu',
              style: TextStyle(
                fontFamily: 'serif',
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(title: const Text('Your Profile'), onTap: () {}),
          ListTile(title: const Text('Item 2')),
        ],
      ),
    );
  }
}
