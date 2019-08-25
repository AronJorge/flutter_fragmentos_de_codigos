import 'package:flutter/material.dart';

import 'package:flutter_list/routes/Routes.dart';
import 'package:flutter_list/pages/Alert/Alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }
}
