import 'package:flutter/material.dart';

class InputTextComponent extends StatelessWidget {
  String inputLabelName;
  String inputPlaceholder;
  bool isPassword;
  TextEditingController inputController;
  FormFieldValidator<String> validator;

  InputTextComponent(this.inputLabelName, this.inputPlaceholder,
      {this.isPassword = false, this.inputController, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      obscureText: isPassword,
      validator: validator,
      decoration: InputDecoration(
          labelText: inputLabelName, hintText: inputPlaceholder),
    );
  }
}
