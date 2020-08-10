import 'package:flutter/material.dart';

///Custom widget for the first row of buttons
///Widget takes a text and an onTap function as required parameters
class SmallButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const SmallButton({Key key, @required this.text, @required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 45,
        decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(text,
              style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).primaryColorDark.withOpacity(.6))),
        ),
      ),
    );
  }
}
