import 'package:flutter/material.dart';

final _icon = <String, IconData>{
  "add_alert": Icons.add_alert,
  "accessibility": Icons.accessibility,
  "folder_open": Icons.folder_open,
};

Icon getIcons(IconNameString) {
  return Icon(
    _icon[IconNameString],
    color: Colors.blue,
    size: 28,
  );
}
