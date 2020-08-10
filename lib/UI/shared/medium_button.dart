import 'package:flutter/material.dart';

///Custom widget for the other set of buttons except 0
///Widget takes a text and an onTap function as required parameters
///buttonColor and textColor are optional because the UI doesn't use uniform colours and I don't which to defy DRY
class MediumButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final Color buttonColor;
  final Color textColor;

  const MediumButton(
      {Key key,
      @required this.text,
      @required this.onTap,
      this.textColor,
      this.buttonColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 75,
        decoration: BoxDecoration(
            color: buttonColor ?? Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(text,
              textScaleFactor: 1.2,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: textColor ?? Theme.of(context).primaryColorDark)),
        ),
      ),
    );
  }
}
