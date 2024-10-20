import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/features/presenation/widgets/quick_invoice.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                AllExpenses(),
                QuickInvoice(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
