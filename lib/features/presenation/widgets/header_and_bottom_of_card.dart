import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_styles.dart';
import '../../../core/utils/assets.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 31),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Name card',
                style: AppStyles.styleRegular14()
                    .copyWith(color: Colors.white.withOpacity(.92)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Syah Bandia',
                style: AppStyles.styleMedium20(),
              ),
            ],
          ),
        ),
        const Expanded(child: SizedBox()),
        Padding(
          padding: const EdgeInsets.only(top: 34),
          child: SvgPicture.asset(
            Assets.imagesGallery,
            colorFilter: const ColorFilter.mode(
              Color(0xff292D32),
              BlendMode.srcIn,
            ),
          ),
        ),
        const SizedBox(
          width: 45,
        )
      ],
    );
  }
}

class BottomCard extends StatelessWidget {
  const BottomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '0918 8124 0042 8129',
            style: AppStyles.styleSemiBold24().copyWith(color: Colors.white),
          ),
          Text(
            '12/20 - 124',
            style: AppStyles.styleRegular16().copyWith(
              color: Colors.white.withOpacity(.92),
            ),
          ),
        ],
      ),
    );
  }
}
