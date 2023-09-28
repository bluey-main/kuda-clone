import 'package:flutter/material.dart';
import '../theme/themes.dart';
import 'package:hexcolor/hexcolor.dart';
import './cards.dart';
import './home.dart';
import './invest.dart';
import './more.dart';
import './pay.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  List<Widget> body = [
    Home(),
    Pay(),
    Invest(),
    Cards(),
    More(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            label: "Pay",
            icon: Icon(Icons.send_rounded),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded), label: "Invest"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: "Cards"),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "More"),
        ],
      ),
    );
  }
}
