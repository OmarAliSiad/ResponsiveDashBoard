import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/features/presenation/widgets/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 4,
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: AllExpenses(),
              ),
              SliverToBoxAdapter(
                child: QuickInvoice(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
