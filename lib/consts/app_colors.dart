import 'package:flutter/material.dart';

class Constants {
  

  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.orange;
  static Color darkAccent = Colors.orangeAccent;
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;


  //light theme

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    // ignore: deprecated_member_use
    accentColor: lightAccent,
    // ignore: deprecated_member_use
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      // ignore: deprecated_member_use
      textTheme: TextTheme(
        headline6: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );


  //dark theme 
  
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    // ignore: deprecated_member_use
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    // ignore: deprecated_member_use
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      // ignore: deprecated_member_use
      textTheme: TextTheme(
        headline6: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}
