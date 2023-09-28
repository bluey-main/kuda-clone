import 'package:flutter/material.dart';

class HeadActivityWidget extends StatelessWidget {
  const HeadActivityWidget(
      {Key? key, required this.itemcount, required this.itemBuilder})
      : super(key: key);
  final int itemcount;

  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        width: double.infinity,
        height: 35,
        child: SizedBox(
          width: double.infinity,
          child: ListView.builder(
            itemCount: itemcount,
            scrollDirection: Axis.horizontal,
            itemBuilder: itemBuilder,
          ),
        ),
      ),
    );
  }
}
