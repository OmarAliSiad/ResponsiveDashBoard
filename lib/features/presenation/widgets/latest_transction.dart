import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
