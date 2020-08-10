import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  //color for equal to button
  primaryColor: Color(0xff4aebc4),
  //color for the RAD button
  accentColor: Color(0xfffff7ed),
  primaryColorLight: Colors.white,
  //color for most of the buttons except the pink like ones
  buttonColor: Color(0xfff0f2f3),
  //pink like color
  highlightColor: Color(0xfffff4fe),
  primaryColorDark: Colors.black,
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
ThemeData appThemeDark = ThemeData(
  //color for equal to button
  primaryColor: Color(0xff3fe1ba),
  primaryColorLight: Color(0xff071115),
  //color for the RAD button
  accentColor: Color(0xff2f2512),
  //color for most of the buttons except the pink like ones
  buttonColor: Color(0xff202b30),
  //pink like color
  highlightColor: Color(0xff2e1f39),
  primaryColorDark: Colors.white,
  brightness: Brightness.dark,
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
