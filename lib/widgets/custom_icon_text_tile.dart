import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class CustomIconTextTile extends StatelessWidget {
  CustomIconTextTile({
    Key? key,
    required this.icon,
    this.color = Colors.white,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 180,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            // color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.16),
                  blurRadius: 2,
                  spreadRadius: 1,
                  blurStyle: BlurStyle.outer)
            ]),
        padding: const EdgeInsets.only(left: 15.0),
        child: Row(
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: HexColor("#40169D")),
              child: Icon(
                icon,
                color: Colors.white,
                size: 12.0,
              ),
            ),
            const SizedBox(width: 15),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
