import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_list/share/appBar.dart';

class CardPage extends StatelessWidget {
  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(
        actions: AppBarHomePage("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          _CardTipo2(),
          _CardTipo1(),
          Divider(
            height: 26.0,
          ),
          _CardTipo2(),
          _CardTipo1(),
          Divider(
            height: 26.0,
          ),
          _CardTipo2(),
          _CardTipo1(),
          Divider(
            height: 26.0,
          ),
          _CardTipo2(),
          _CardTipo1(),
          Divider(
            height: 26.0,
          ),
          _CardTipo2(),
        ],
      ),
    );
  }

  Widget _CardTipo1() {
    TextStyle styletitle =
        TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0);

    return new Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(35),
        topRight: Radius.circular(4),
        bottomLeft: Radius.circular(4),
        bottomRight: Radius.circular(20),
      )),
      child: new Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 20.0)),
          ListTile(
            leading: FadeInImage(
              image: NetworkImage(
                  "https://cdn.mos.cms.futurecdn.net/FUE7XiFApEqWZQ85wYcAfM.jpg"),
              placeholder: AssetImage("assets/jar-loading.gif"),
              fit: BoxFit.cover,
              height: 300.0,
            ),
            title: ListTile(
              title: Text(
                "Texto de la tarjeta de tipo 1 simply dummy text of the printing and typesetting industry. ",
                style: styletitle,
              ),
              onTap: () {},
            ),
            subtitle: Text(
                "simply dummy text of the printing and typesetting industry. "
                "Lorem Ipsum has been the industry's standard dummy text "
                "ever since the 1500s, when an unknown printer took a galley "
                "of type and scrambled it to make a type specimen book."),
          ),
          Padding(padding: EdgeInsets.only(top: 10.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: () {}, child: Text("Cancelar", style: styletitle)),
              FlatButton(
                  onPressed: () {}, child: Text("Ok", style: styletitle)),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _CardTipo2() {
    final card = new Container(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                "https://cdn.mos.cms.futurecdn.net/FUE7XiFApEqWZQ85wYcAfM.jpg"),
            placeholder: AssetImage("assets/jar-loading.gif"),
            fit: BoxFit.cover,
            height: 300.0,
          ),
          Container(
            child: Text("Buscando un texto para poner"),
            padding: EdgeInsets.symmetric(vertical: 6.0),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 8.0,
                spreadRadius: 2.0,
                offset: Offset(1.0, 4.0))
          ]),
      child: ClipRRect(borderRadius: BorderRadius.circular(30), child: card),
    );
  }
}
