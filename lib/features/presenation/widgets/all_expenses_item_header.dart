import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class AllExpensesItemHeader extends StatelessWidget {
  final String image;
  final Color? imageBackground, imageColor;

  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageBackground,
    this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: imageBackground ?? const Color(0xffFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Expanded(
          child: Transform.rotate(
            angle: 2 * math.pi / 2,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: imageColor == null
                  ? const Color(0xFF064061)
                  : const Color(0xFFFFFFFF),
            ),
          ),
        ),
      ],
    );
  }
}
