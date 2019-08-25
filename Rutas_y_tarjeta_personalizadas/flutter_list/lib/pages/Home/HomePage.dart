import 'dart:convert';
import 'dart:core' as prefix0;
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_list/share/appBar.dart';

import 'package:flutter_list/utils/Icons_string.dart';

class HomePage extends StatefulWidget {
  @override
  createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: AppBarHomePage("Inicio"),
        ),
        body: ListaMenu());
  }

  Widget ListaMenu() {
    return FutureBuilder(
      future: cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _lista(snapshot.data),
        );
      },
    );
  }

  List<Widget> _lista(List<dynamic> data) {
    List<Widget> ListaTitulo = new List<Widget>();

    for (var menu in data) {
      ListaTitulo.add(ListTile(
        title: new Text(
          menu["texto"],
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        leading: getIcons(menu["icon"]),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
//          final route = MaterialPageRoute(builder: (context) => AlertPage());
          Navigator.pushNamed(context, menu["ruta"]);
        },
      ));
    }

    return ListaTitulo;
  }

  Future<List<dynamic>> cargarData() async {
    var data = await rootBundle.loadString("data/datos.json");
    Map dataMap = json.decode(data);

    return dataMap["rutas"];
  }
}
