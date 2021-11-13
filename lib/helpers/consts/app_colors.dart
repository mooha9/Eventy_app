import 'package:flutter/material.dart';

class Constants {
  
  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.teal;
  static Color? darkAccent = Colors.teal[50];
  static Color? lightBG = Colors.teal[200];
  static Color darkBG = Colors.black;


  static Color buttonPrimary = Colors.teal;

  //light theme

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightAccent,
    // ignore: deprecated_member_use
    accentColor: buttonPrimary,
    // ignore: deprecated_member_use
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    // ignore: deprecated_member_use
    buttonColor : buttonPrimary ,
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
