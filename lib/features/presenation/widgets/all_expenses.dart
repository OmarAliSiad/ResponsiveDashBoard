import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses_item_list_view.dart';

import 'custom_container_back_ ground.dart';

class AllExpenses extends StatelessWidget {
  final double ? marginTop;
  const AllExpenses({super.key,  this.marginTop});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      marginTop: marginTop ?? 40,
      marginBottom: 24,
      marginRight: 24,
      marginLeft: 32,
      paddingHorizontal: 20,
      paddingVertical: 20,
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          AllExpensesHeader(
            title: 'All Expenses',
          ),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
