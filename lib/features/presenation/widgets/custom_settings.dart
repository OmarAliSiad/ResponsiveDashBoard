import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/active_and_incative_item.dart';

import '../../../core/utils/assets.dart';
import '../../data/models/drawer_item.dart';

class CustomSettings extends StatelessWidget {
  const CustomSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: SizedBox(
            height: 20,
          ),
        ),
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
              title: 'Setting system', image: Assets.imagesSettings),
        ),
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
              title: 'Logout account', image: Assets.imagesLogout),
        ),
        const SizedBox(
          height: 48,
        )
      ],
    );
  }
}
