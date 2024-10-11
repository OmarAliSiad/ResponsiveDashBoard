import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/data/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/features/presenation/widgets/active_expenses_item.dart';
import 'package:responsive_dash_board/features/presenation/widgets/inactive_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel itemModel;
  final bool isSelected;

  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveExpensesItem(itemModel: itemModel)
        : InActiveExpensesItem(itemModel: itemModel);
  }
}
