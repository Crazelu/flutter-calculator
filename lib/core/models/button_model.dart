import 'package:flutter/material.dart';

class MyButton {
  final String text;
  final Function onTap;
  final Color textColor;
  final Color buttonColor;

  MyButton(this.text, this.onTap, {this.textColor, this.buttonColor});
}

List<MyButton> firstRow = [
  MyButton('e', () {}),
  MyButton('n', () {}),
  MyButton('sin', () {}),
  MyButton('deg', () {}),
];

List<MyButton> secondRow = [
  MyButton('C', () {}),
  MyButton('n', () {}),
  MyButton('sin', () {}),
  MyButton('deg', () {}),
];
