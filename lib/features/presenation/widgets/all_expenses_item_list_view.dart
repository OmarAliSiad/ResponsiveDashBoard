import 'package:flutter/material.dart';
import '../../../core/utils/assets.dart';
import '../data/models/all_expenses_item_model.dart';
import 'all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> itemModels = [
    const AllExpensesItemModel(
        title: 'Balance',
        image: Assets.imagesBalance,
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        title: 'Income',
        image: Assets.imagesIncome,
        date: 'April 2022',
        price: r'$20.90'),
    const AllExpensesItemModel(
        title: 'Expenses',
        image: Assets.imagesExpenses,
        date: 'April 2022',
        price: r'$20.90'),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: itemModels.asMap().entries.map(
        (entry) {
          var index = entry.key;
          var itemModel = entry.value;
          return Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: InkWell(
                onTap: () {
                  selectedIndex(index);
                },
                child: AllExpensesItem(
                  itemModel: itemModel,
                  isSelected: activeIndex == index,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  void selectedIndex(int index) {
    if (activeIndex != index) {
      setState(() {
        activeIndex = index;
      });
    }
  }
}
