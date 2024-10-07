import 'package:flutter/material.dart';

import 'features/presenation/views/responsive_dash_board_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home : ResponsiveDashBoardView() 
    );
  }
}