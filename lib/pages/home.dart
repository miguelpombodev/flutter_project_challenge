import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_challenge/components/button.dart';
import 'package:flutter_project_challenge/components/drawer.dart';
import 'package:flutter_project_challenge/models/carro.dart';
import 'package:flutter_project_challenge/pages/carrosListView.dart';
import 'package:flutter_project_challenge/pages/carros_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // if (carros == null) {
    //   return Center(child: CircularProgressIndicator());
    // } else {
    return Scaffold(
      appBar: AppBar(
        title: Text("Challenge Motors"),
        centerTitle: true,
      ),
      body: CarrosListView(),
      drawer: DrawerComponent(),
    );
  }
}
