import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/features/presenation/widgets/my_card.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(flex: 2, child: MyCard())
      ],
    );
  }
}
