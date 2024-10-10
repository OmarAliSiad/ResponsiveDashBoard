import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/data/models/drawer_item.dart';
import 'package:responsive_dash_board/features/presenation/widgets/active_and_incative_item.dart';

class DrawerItem extends StatelessWidget {
  final bool isActive;
  final DrawerItemModel drawerItemModel;
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(
            drawerItemModel: drawerItemModel,
          )
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
