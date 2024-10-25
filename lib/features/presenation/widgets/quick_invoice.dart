import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_container_back_%20ground.dart';
import 'package:responsive_dash_board/features/presenation/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/features/presenation/widgets/quick_invoice_info_form.dart';

import 'latest_transction.dart';

class QuickInvoice extends StatelessWidget {
  final double? marginTop;
  final double? marginBottom;
  final double? marginLeft;
  final double? marginRight;
  final double? paddingHorizontal;
  final double? paddingVertical;
  const QuickInvoice(
      {super.key,
      this.marginTop,
      this.marginBottom,
      this.marginLeft,
      this.marginRight,
      this.paddingHorizontal,
      this.paddingVertical});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      marginTop: marginTop ?? 24,
      marginBottom: marginBottom ?? 32,
      marginRight: marginRight ?? 24,
      marginLeft: marginLeft ?? 32,
      paddingHorizontal: paddingHorizontal ?? 24,
      paddingVertical: paddingVertical ?? 24,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: Divider(
              color: Color(0xFFF1F1F1),
            ),
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
