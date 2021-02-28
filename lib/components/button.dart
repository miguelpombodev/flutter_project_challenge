import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  String buttonText;
  Function onPressed;

  ButtonComponent(this.buttonText, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.black87,
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: onPressed,
    );
  }
}
