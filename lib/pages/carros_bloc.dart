import 'dart:async';

import 'package:flutter_project_challenge/models/carro.dart';
import 'package:flutter_project_challenge/service/api_connection.dart';

class CarroBloc {
  final _streamController = StreamController<List<Carro>>();

  get stream => _streamController.stream;

  loadData(String tipo) async {
    List<Carro> carros = await ApiConnection.connect(tipo);

    _streamController.add(carros);
  }
}
