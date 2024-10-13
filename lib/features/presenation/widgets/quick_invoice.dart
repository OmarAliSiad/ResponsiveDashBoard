import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_container_back_%20ground.dart';
import 'package:responsive_dash_board/features/presenation/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      padding: 0,
      child: Column(
        children: [
          QuickInvoiceHeader()],
      ),
    );
  }
}
