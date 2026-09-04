import 'package:flutter/material.dart';
import 'cart.dart';

class SeaShopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SeaShopAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star),
          SizedBox(width: 8),
          Text(
            'SeaShop',
            style: TextStyle(
              fontFamily: 'serif',
              fontSize: 33.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ], // Children
      ),
      centerTitle: false,
      titleSpacing: 0.0,
      backgroundColor: Colors.blue.shade200,

      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cartpage()),
            );
          },
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black.withValues(alpha: 0.6),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
