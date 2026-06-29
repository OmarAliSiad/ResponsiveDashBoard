import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dash_board/features/data/providers/select_items_provider.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses.dart';
import 'package:responsive_dash_board/features/presenation/widgets/my_card_section.dart';
import 'package:responsive_dash_board/features/presenation/widgets/quick_invoice.dart';
import 'package:responsive_dash_board/views/my_transaction_view.dart';
import 'package:responsive_dash_board/views/statistics_view.dart';
import 'package:responsive_dash_board/views/wallet_account_view.dart';
import 'package:responsive_dash_board/views/my_investments_view.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _buildSelectedView(context);
  }

  Widget _buildSelectedView(BuildContext context) {
    final activeIndex = context.watch<ProviderSelectItems>().activeIndex;

    switch (activeIndex) {
      case 0: // Dashboard
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
                SizedBox(height: 20),
              ],
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
                SizedBox(height: 20),
              ],
            ),
          ],
        );
    }
  }
}
