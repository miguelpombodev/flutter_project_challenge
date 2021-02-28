import 'dart:convert';

import 'package:flutter_project_challenge/models/carro.dart';
import 'package:http/http.dart' as http;

class ApiConnection {
  static Future<List<Carro>> connect(String request) async {
    String baseUrl = "https://carros-springboot.herokuapp.com/api/v1/";

    var response = await http.get(baseUrl + request);

    List listResponse = json.decode(response.body);

    var carros = listResponse.map((carro) => Carro.fromJson(carro)).toList();

    return carros;
  }
}
