import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_container_back_%20ground.dart';
import 'package:responsive_dash_board/features/presenation/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/features/presenation/widgets/quick_invoice_info_form.dart';

import 'latest_transction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      marginTop: 24,
      marginBottom: 32,
      marginRight: 24,
      marginLeft: 32,
      paddingHorizontal: 24,
      paddingVertical: 24,
      child: Column(
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
