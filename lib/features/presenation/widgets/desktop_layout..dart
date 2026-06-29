import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dash_board/features/data/providers/select_items_provider.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/features/presenation/widgets/my_card_section.dart';
import 'package:responsive_dash_board/views/my_transaction_view.dart';
import 'package:responsive_dash_board/views/statistics_view.dart';
import 'package:responsive_dash_board/views/wallet_account_view.dart';
import 'package:responsive_dash_board/views/my_investments_view.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(
          flex: 5,
          child: _buildSelectedView(context),
        ),
      ],
    );
  }

  Widget _buildSelectedView(BuildContext context) {
    final activeIndex = context.watch<ProviderSelectItems>().activeIndex;

    switch (activeIndex) {
      case 0: // Dashboard
        return const Row(
          children: [
            Expanded(
              flex: 3,
              child: AllExpensesAndQuickInvoiceSection(),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: CustomScrollView(
                      physics: BouncingScrollPhysics(),
                      slivers: [
                        SliverToBoxAdapter(
                          child: MyCardAndIncomeSection(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      case 1: // My Transaction
        return const MyTransactionView();
      case 2: // Statistics
        return const StatisticsView();
      case 3: // Wallet Account
        return const WalletAccountView();
      case 4: // My Investments
        return const MyInvestmentsView();
      default:
        return const Row(
          children: [
            Expanded(
              flex: 3,
              child: AllExpensesAndQuickInvoiceSection(),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: CustomScrollView(
                      physics: BouncingScrollPhysics(),
                      slivers: [
                        SliverToBoxAdapter(
                          child: MyCardAndIncomeSection(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
    }
  }
}
