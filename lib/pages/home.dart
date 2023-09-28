import 'package:flutter/material.dart';
import '../components/home_header_component.dart';
import '../homeSubPages/spend.dart';
import '../homeSubPages/save.dart';
import '../homeSubPages/borrow.dart';
import 'package:hexcolor/hexcolor.dart';
import '../components/head_activity_widgets.dart';
import '../widgets/activity_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentView = 0;

  List<String> activities = [
    "Spend",
    "Save",
    "Borrow",
  ];

  List<Widget> viewPage = [
    Spend(),
    Save(),
    Borrow(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const HomeHeaderComponent(),
            HeadActivityWidget(
                itemcount: activities.length,
                itemBuilder: (context, index) {
                  return ActivityTile(
                      text: activities[index],
                      color: (currentView == index)
                          ? HexColor("#40196D")
                          : Colors.black.withOpacity(0.3),
                      onTap: () {
                        setState(() {
                          currentView = index;
                        });
                      });
                }),
            Column(
              children: [
                viewPage[currentView],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
