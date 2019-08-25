import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list/share/appBar.dart';


class AvaratPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: AppBarHomePage("Avatar"),
      ),
      body: Center(child: Text("Texto del avatrar"),),
    );
  }
}


