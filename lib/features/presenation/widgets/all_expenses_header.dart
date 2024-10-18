import 'package:flutter/material.dart';
import '../../../core/utils/app_styles.dart';
import 'range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  final String title;
  @override
  const AllExpensesHeader({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(),
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions(),
      ],
    );
  }
}
