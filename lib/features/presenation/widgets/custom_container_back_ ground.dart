import 'package:flutter/material.dart';

class CustomBackGroundContainer extends StatelessWidget {
  final Widget child;
  final double paddingHorizontal;
  final double paddingVertical;
  final double marginLeft;
  final double marginRight;
  final double marginTop, marginBottom;
  const CustomBackGroundContainer({
    super.key,
    required this.child,
    required this.paddingHorizontal,
    required this.paddingVertical,
    required this.marginTop,
    required this.marginBottom,
    required this.marginLeft,
    required this.marginRight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: marginTop,
          bottom: marginBottom,
          left: marginLeft,
          right: marginRight),
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal ?? 20, vertical: paddingVertical ?? 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
