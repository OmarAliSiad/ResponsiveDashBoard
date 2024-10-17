import 'package:flutter/material.dart';

class TransactionModel {
  final String title;
  final String subTitle;
  final String price;
  final Color color;

  TransactionModel({
    required this.title,
    required this.subTitle,
    required this.price,
    required this.color,
  });
}
