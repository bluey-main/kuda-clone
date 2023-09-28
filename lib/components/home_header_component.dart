import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeHeaderComponent extends StatelessWidget {
  const HomeHeaderComponent({super.key});
  final String name = "Victor";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: HexColor("#40196D"),
                child: Text(name[0]),
              ),
             const SizedBox(width: 10),
              Text(
                "Hi,$name",
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Icon(
            Icons.pie_chart,
            color: HexColor("#40196D"),
            size: 30.0,
          )
        ],
      ),
    );
  }
}
