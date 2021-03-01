import 'package:flutter/material.dart';
import 'package:flutter_project_challenge/components/button.dart';
import 'package:flutter_project_challenge/components/text_input_component.dart';
import 'package:flutter_project_challenge/pages/loginPages/nome_mae_cadastro.dart';
import 'package:flutter_project_challenge/utils/nav.dart';

class SaveClients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    final _userCPF = TextEditingController();

    void _onSubmitCPF(context) {
      if (!_formKey.currentState.validate()) {
        return;
      }

      String cpfValue = _userCPF.text;
      push(context, NomeMaeCadastroScreen());
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
                  "CPF do Cliente",
                  "Digite o número do CPF",
                  inputController: _userCPF,
                  validator: (String text) {
                    if (text.isEmpty) {
                      return "Digite o CPF";
                    }
                    return null;
                  },
                ),
                ButtonComponent("Próximo", () {
                  _onSubmitCPF(context);
                }),
              ],
              padding: EdgeInsets.all(20),
            ),
            margin: EdgeInsets.only(top: 200),
          ),
        ));
  }
}
