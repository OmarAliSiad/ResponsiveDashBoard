import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_app_bar.dart';
import 'package:responsive_dash_board/features/presenation/widgets/dash_board_mobile_layout.dart';
import 'custom_drawer.dart';

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
        width: MediaQuery.sizeOf(context).width * .5,
        child: const CustomDrawer(),
      ),
      body: const DashBoardMobileLayout(),
    );
  }
}
