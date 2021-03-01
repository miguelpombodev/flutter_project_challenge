import 'package:flutter/material.dart';
import 'package:flutter_project_challenge/components/button.dart';
import 'package:flutter_project_challenge/components/text_input_component.dart';

class NomeMaeCadastroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    final _userCPF = TextEditingController();

    void _onSubmitNomeMae() {
      if (!_formKey.currentState.validate()) {
        return;
      }

      String cpfValue = _userCPF.text;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastrar Clientes Novos"),
          centerTitle: true,
        ),
        body: Form(
          key: _formKey,
          child: Container(
            child: ListView(
              children: [
                InputTextComponent(
                  "Nome da Mãe",
                  "Digite o Nome da Mãe do Cliente",
                  inputController: _userCPF,
                  validator: (String text) {
                    if (text.isEmpty) {
                      return "Digite o CPF";
                    }
                    return null;
                  },
                ),
                ButtonComponent("Próximo", _onSubmitNomeMae),
              ],
              padding: EdgeInsets.all(20),
            ),
            margin: EdgeInsets.only(top: 200),
          ),
        ));
  }
}
