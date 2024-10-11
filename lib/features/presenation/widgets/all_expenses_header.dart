import 'package:flutter/material.dart';
import '../../../core/utils/app_styles.dart';
import 'range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  @override
  const AllExpensesHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(),
        ),
        const Expanded(child: SizedBox()),
        const RanggeOptions(),
      ],
    );
  }
}
