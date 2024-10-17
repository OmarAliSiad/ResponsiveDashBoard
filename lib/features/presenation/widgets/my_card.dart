import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/assets.dart';
import 'package:responsive_dash_board/features/presenation/widgets/header_and_bottom_of_card.dart';

class MyCard extends StatelessWidget {
  final Color color ;
  const MyCard({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(Assets.imagesCardBackGorundColor),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
            color:  color,
            shape: BoxShape.rectangle),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderCard(),
            Expanded(
              flex: 6,
              child: SizedBox(),
            ),
            BottomCard(),
            Expanded(
              child: SizedBox(
                height: 27,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
