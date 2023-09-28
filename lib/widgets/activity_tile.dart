import 'package:flutter/material.dart';

class ActivityTile extends StatelessWidget {
  const ActivityTile(
      {Key? key, required this.text, required this.color, required this.onTap})
      : super(key: key);
  final Function()? onTap;
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          constraints: const BoxConstraints(minWidth: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(
                style: BorderStyle.solid,
                color: Colors.black.withOpacity(0.06)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.02),
                blurRadius: 0.5,
                spreadRadius: 0.5,
              ),
            ],
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: color,
            ),
          ),
        ),
      ),
    );
    ;
  }
}
