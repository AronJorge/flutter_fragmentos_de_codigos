import 'package:flutter/material.dart';

List<Widget> BotonesBanner(Titulo) {
  return [
    SizedBox(width: 20.0),
    new Icon(Icons.dehaze),
    Expanded(child: SizedBox(width: 30.0)),
    new Text(Titulo,
        style: TextStyle(fontSize: 24, height: 1.8),
        textAlign: TextAlign.center),
    Expanded(child: SizedBox(width: 30.0)),
    new Icon(Icons.account_balance_wallet),
    SizedBox(width: 20.0),
  ];
}

