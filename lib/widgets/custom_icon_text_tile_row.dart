import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
import './custom_icon_text_tile.dart';

class CustomTextTileRow extends StatelessWidget {
  const CustomTextTileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        children: [
          CustomIconTextTile(icon: Icons.repeat, text: "Convert"),
          SizedBox(width: 15),
          CustomIconTextTile(icon: Icons.add, text: "Add Money"),
        ],
      ),
    );
  }
}
