import 'package:flutter/material.dart';
import 'package:flutter_project_challenge/pages/home.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      home: HomePage(),
    );
  }
}
