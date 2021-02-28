import 'package:flutter/material.dart';
import 'package:flutter_project_challenge/components/button.dart';
import 'package:flutter_project_challenge/components/drawer.dart';
import 'package:flutter_project_challenge/models/carro.dart';
import 'package:flutter_project_challenge/service/api_connection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Challenge Motors"),
        centerTitle: true,
      ),
      body: _home(context),
      drawer: DrawerComponent(),
    );
  }

  _home(context) {
    return FutureBuilder(
        future: ApiConnection.connect("carros"),
        builder: (context, snapshot) {
          List<Carro> response = snapshot.data;
          // return Text("Foi!");
          return ListView.builder(
            itemCount: response.length,
            itemBuilder: (context, index) {
              Carro c = response[index];
              if (c.nome != null) {
                return _listView(c.urlFoto, c.nome);
              }
            },
          );
        });
  }

  _listView(String picture, String nome) {
    return Card(
        color: Colors.grey[300],
        child: Column(
          children: [
            Center(
              child: Image.network(
                picture,
                width: 300,
              ),
            ),
            Text(
              nome,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                ButtonComponent(
                  "Details",
                  () => {},
                  marginRight: 12,
                ),
                ButtonComponent("Shared", () => {})
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}
