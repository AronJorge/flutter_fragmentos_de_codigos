import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var menus = [
    "Primero",
    "Segundo",
    "Tercero",
    "Cuarto",
    "Quinto",
    "Sexto",
    "Septimo",
    "Octavo",
    "Noveno"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListaMenu(),
    );
  }

  ListView ListaMenu() {
    List<Widget> ListaTitulo = new List<Widget>();
    for (var menu in menus) {
      ListaTitulo.add(ListTile(
        title: new Text(
          "$menu",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        leading: Icon(
          Icons.ac_unit,
          size: 28,
          color: Colors.amberAccent[200],
        ),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: (){},
      ));
    }

    return ListView(
      children: ListaTitulo,
    );
  }
}
