import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses_item_list_view.dart';

import 'custom_container_back_ ground.dart';

class AllExpenses extends StatelessWidget {
  final double? marginTop;
  final double? marginBottom; 
  final double? marginLeft; 
  final double? marginRight; 
  final double? paddingVertical; 
  final double? paddingHorizontal; 
  
  const AllExpenses({super.key, this.marginTop, this.marginBottom, this.marginLeft, this.marginRight, this.paddingVertical, this.paddingHorizontal});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      marginTop: marginTop ?? 40,
      marginBottom: marginBottom ?? 24,
      marginRight:marginRight??  24,
      marginLeft:marginLeft??  32,
      paddingHorizontal:paddingHorizontal?? 20,
      paddingVertical:paddingVertical??  20,
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
