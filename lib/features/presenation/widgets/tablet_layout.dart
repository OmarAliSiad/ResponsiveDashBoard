import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/features/presenation/widgets/dash_board_layout.dart';
import 'package:responsive_dash_board/features/presenation/widgets/dash_board_mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(flex: 3, child: DashBoardTabeltLayout()),
      ],
    );
  }
}
