import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widgets/bottom_nav_bar.dart';

class ThemeClass {
  Color lightPrimaryColor = HexColor('#40196D');
  Color darkPrimaryColor = HexColor('#40196D');
  Color secondaryColor = HexColor('#40196D');
  Color accentColor = HexColor('#5AD796');

  static ThemeData lighTheme = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: _themeClass.lightPrimaryColor,
      secondary: _themeClass.secondaryColor,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: HexColor("#ffffff").withOpacity(0.4),
      selectedItemColor: HexColor("#ffffff"),
    ),
    

    colorScheme: const ColorScheme.dark().copyWith(
      primary: _themeClass.darkPrimaryColor,
      secondary: _themeClass.secondaryColor,
    ),
  );
}

ThemeClass _themeClass = ThemeClass();
