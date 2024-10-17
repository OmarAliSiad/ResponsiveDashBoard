import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/data/models/transaction_model.dart';
import 'package:responsive_dash_board/features/presenation/widgets/my_transactions_container.dart';

class MyTransactionsListView extends StatelessWidget {
  final List<TransactionModel> myTransactions;
  const MyTransactionsListView({super.key, required this.myTransactions});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: myTransactions.length,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return MyTransactionContainer(myTransactions: myTransactions[index]);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 12),
    );
  }
}
