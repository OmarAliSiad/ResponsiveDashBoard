import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/mobile_layout.dart';
import 'package:responsive_dash_board/features/presenation/widgets/tablet_layout.dart';
import '../widgets/adaptive_layout.dart';
import '../widgets/desktop_layout..dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
