import 'package:flutter/material.dart';

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
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("Listar Cadastros Criados"),
            ),
          ],
        ),
      ),
    );
  }
}
