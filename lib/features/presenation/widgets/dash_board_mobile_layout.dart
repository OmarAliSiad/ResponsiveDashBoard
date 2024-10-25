import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses.dart';
import 'package:responsive_dash_board/features/presenation/widgets/my_card_section.dart';
import 'package:responsive_dash_board/features/presenation/widgets/quick_invoice.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        Column(
          children: [
            AllExpenses(
              marginTop: 20,
              marginBottom: 24,
              marginLeft: 0,
              marginRight: 0,
              paddingHorizontal: 20,
              paddingVertical: 20,
            ),
            QuickInvoice(
              marginTop: 24,
              marginBottom: 32,
              marginLeft: 0,
              marginRight: 0,
              paddingHorizontal: 20,
              paddingVertical: 20,
            ),
            MyCardAndIncomeSection(
              marginTop: 0,
              marginBottom: 32,
              marginLeft: 0,
              marginRight: 0,
              paddingHorizontal: 20,
              paddingVertical: 20,
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ],
    );
  }
}
