import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomDrawer(),
      ],
    );
  }
}
