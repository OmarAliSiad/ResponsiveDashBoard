import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';
import '../data/models/transaction_model.dart';

class MyTransactionContainer extends StatelessWidget {
  final TransactionModel myTransactions;
  const MyTransactionContainer({super.key, required this.myTransactions});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFAFAFA),
      ),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Text(
            myTransactions.title,
            style: AppStyles.styleSemiBold16(),
          ),
        ),
        subtitle: Text(
          myTransactions.subTitle,
          style: AppStyles.styleRegular14(),
        ),
        trailing: Text(
          myTransactions.price,
          style:
              AppStyles.styleSemiBold20().copyWith(color: myTransactions.color),
        ),
      ),
    );
  }
}
