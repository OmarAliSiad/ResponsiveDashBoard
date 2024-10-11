import 'package:flutter/material.dart';

class CustomBackGroundContainer extends StatelessWidget {
  final Widget child;
  final double padding;
  const CustomBackGroundContainer({
    super.key,
    required this.child,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: child,
    );
  }
}
