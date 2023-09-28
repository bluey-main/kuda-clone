import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.16),
                blurRadius: 1,
                spreadRadius: 2,
                blurStyle: BlurStyle.outer)
          ],
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(10),
          leading: const CustomLeadingIcon(),
          title: Text(
            "Increase Your Limit",
            style: TextStyle(
              color: HexColor("#40196D"),
              fontSize: 15,
              fontWeight: FontWeight.w900,
            ),
          ),
          subtitle: const SubtitleWidget(),
          trailing: const TrailingWidget(),
        ),
      ),
    );
  }
}

class TrailingWidget extends StatelessWidget {
  const TrailingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.red.shade400,
      ),
      child: const Padding(
        padding: EdgeInsets.all(6.0),
        child: Text(
          "Not Done",
          style: TextStyle(fontSize: 11, color: Colors.white),
        ),
      ),
    );
  }
}

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Text(
        "Add a valid ID to increase your transaction limit",
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}

class CustomLeadingIcon extends StatelessWidget {
  const CustomLeadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Colors.greenAccent, shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 5,
          right: 10,
          left: 10,
          bottom: 8,
        ),
        child: Icon(
          Icons.speed_rounded,
          color: Colors.black38,
          size: 40,
        ),
      ),
    );
  }
}
