import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list/share/appBar.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: AppBarHomePage("Alertas"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.print),
      ),
      body: Center(
        child: new Text("Texto del alertas"),
      ),
    );
  }
}
