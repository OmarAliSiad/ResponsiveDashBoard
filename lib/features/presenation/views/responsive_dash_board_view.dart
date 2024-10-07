import 'package:flutter/material.dart';

import '../widgets/adaptive_layout.dart';
import '../widgets/mobile_layout.dart';

class ResponsiveDashBoardView extends StatelessWidget {
  const ResponsiveDashBoardView({super.key});
  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const SizedBox());
  }
}
