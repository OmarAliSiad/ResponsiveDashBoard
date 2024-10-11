import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses_item_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color:  Colors.white,
          borderRadius: BorderRadius.circular(12)),
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
