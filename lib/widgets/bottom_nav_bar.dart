import 'package:flutter/material.dart';

class BottomNavBarTile extends StatelessWidget {
  const BottomNavBarTile(
      {Key? key, required this.tileIcon, required this.tileTitle})
      : super(key: key);
  final IconData tileIcon;
  final String tileTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(tileIcon),
          Text(tileTitle),
        ],
      ),
    );
  }
}
