import 'package:flutter/material.dart';
import 'package:flutter_project_challenge/components/button.dart';
import 'package:flutter_project_challenge/models/carro.dart';

import 'carros_bloc.dart';

class CarrosListView extends StatefulWidget {
  String tipo = "carros";

  @override
  _CarrosListViewState createState() => _CarrosListViewState();
}

class _CarrosListViewState extends State<CarrosListView>
    with AutomaticKeepAliveClientMixin<CarrosListView> {
  @override
  bool get wantKeepAlive => true;

  List<Carro> carros;

  String get tipo => widget.tipo;

  final _bloc = CarroBloc();

  @override
  void initState() {
    super.initState();

    _bloc.loadData(tipo);
  }

  _home(context) {
    return StreamBuilder(
        stream: _bloc.stream,
        builder: (context, snapshot) {
          List<Carro> response = snapshot.data;
          return Container(
              child: ListView.builder(
            itemCount: response.length,
            itemBuilder: (context, index) {
              Carro c = response[index];
              if (c.nome != null) {
                return _listView(c.urlFoto, c.nome);
              }
            },
          ));
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
                  "Detalhes",
                  () => {},
                  marginRight: 12,
                ),
                ButtonComponent("Compartilhar", () => {})
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return _home(context);
  }
}
