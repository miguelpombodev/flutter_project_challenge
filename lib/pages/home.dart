import 'package:flutter/material.dart';
import 'package:flutter_project_challenge/components/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Challenge Motors"),
        centerTitle: true,
      ),
      body: Text("Olá mundo!"),
      drawer: DrawerComponent(),
    );
  }
}
