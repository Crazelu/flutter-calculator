import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const LargeButton({Key key, this.text, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 75,
        decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(text,
              textScaleFactor: 1.2,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Theme.of(context).primaryColorDark)),
        ),
      ),
    );
  }
}
