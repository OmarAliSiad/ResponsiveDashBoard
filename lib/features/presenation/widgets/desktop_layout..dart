import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_container_back_%20ground.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/features/presenation/widgets/my_card_section.dart';

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
        Expanded(
          flex: 2,
          child: CustomBackGroundContainer(
            marginTop: 40,
            marginRight: 32,
            marginLeft: 24,
            marginBottom: 0,
            paddingHorizontal: 24,
            paddingVertical: 24,
            child: MyCardSection(),
          ),
        ),
      ],
    );
  }
}
