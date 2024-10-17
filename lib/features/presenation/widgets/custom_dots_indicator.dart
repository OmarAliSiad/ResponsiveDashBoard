
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/dots_indicator.dart';

class CustomDotsIndicator extends StatelessWidget {
  final int currentIndex;
  const CustomDotsIndicator({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: index == 1
              ? const EdgeInsets.symmetric(horizontal: 8)
              : EdgeInsets.zero,
          child: DotsIndicator(
            isActive: currentIndex == index,
          ),
        ),
      ),
    );
  }
}

