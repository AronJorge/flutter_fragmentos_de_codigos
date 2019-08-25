import 'package:flutter/material.dart';
import 'package:flutter_list/pages/Alert/Alert.dart';
import 'package:flutter_list/pages/Avatar/Avatar.dart';
import 'package:flutter_list/pages/Cards/CardPages.dart';
import 'package:flutter_list/pages/Home/HomePage.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvaratPage(),
    'card': (BuildContext context) => CardPage(),
  };
}
