import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_drawer.dart';
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

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      appBar: CustomAppBar(globalKey: globalKey),
      key: globalKey,
      drawer: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: 300,
        child: const CustomDrawer(),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> globalKey;
  const CustomAppBar({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey,
      leading: IconButton(
        icon: const Icon(
          Icons.menu_outlined,
          color: Colors.white,
        ),
        onPressed: () {
          globalKey.currentState!.openDrawer();
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
