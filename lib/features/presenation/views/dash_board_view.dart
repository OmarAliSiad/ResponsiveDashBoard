import 'package:flutter/material.dart';
import '../widgets/adaptive_layout.dart';
import '../widgets/desktop_layout..dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
