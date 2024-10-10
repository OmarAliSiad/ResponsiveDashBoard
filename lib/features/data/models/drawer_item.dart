import 'package:flutter/material.dart';
class DrawerItemModel {
  final String title;
  final String image;
  final TextStyle ? textStyle;

  DrawerItemModel(
      {required this.title, required this.image,  this.textStyle});
}
