import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  String buttonText;
  Function onPressed;
  double marginRight;
  double marginUp;
  double marginLeft;
  double marginDown;

  ButtonComponent(
    this.buttonText,
    this.onPressed, {
    this.marginRight = 0,
    this.marginUp = 0,
    this.marginLeft = 0,
    this.marginDown = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.black87,
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: onPressed,
      ),
      margin: EdgeInsets.only(
          left: marginLeft,
          top: marginUp,
          right: marginRight,
          bottom: marginDown),
    );
  }
}
