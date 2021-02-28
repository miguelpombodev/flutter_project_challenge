import 'package:flutter/material.dart';

class InputTextComponent extends StatelessWidget {
  String inputLabelName;
  String inputPlaceholder;

  InputTextComponent(this.inputLabelName, this.inputPlaceholder);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: inputLabelName, hintText: inputPlaceholder),
    );
  }
}
