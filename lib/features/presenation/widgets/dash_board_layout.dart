import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses.dart';
import 'package:responsive_dash_board/features/presenation/widgets/my_card_section.dart';
import 'package:responsive_dash_board/features/presenation/widgets/quick_invoice.dart';

class DashBoardTabeltLayout extends StatelessWidget {
  const DashBoardTabeltLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        Column(
          children: [
            AllExpenses(),
            QuickInvoice(),
            MyCardAndIncomeSection(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ],
    );
  }
}
