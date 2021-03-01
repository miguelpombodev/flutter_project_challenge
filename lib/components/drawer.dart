import 'package:flutter/material.dart';
import 'package:flutter_project_challenge/pages/list_clients.dart';
import 'package:flutter_project_challenge/pages/loginPages/save_clients.dart';
import 'package:flutter_project_challenge/utils/nav.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.assignment_ind_rounded),
              title: Text("Cadasto de Novos Clientes"),
              onTap: () => {push(context, SaveClients())},
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("Listar Cadastros Criados"),
              onTap: () => {push(context, ListClients())},
            ),
          ],
        ),
      ),
    );
  }
}
