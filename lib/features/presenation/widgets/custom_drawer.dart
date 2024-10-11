import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_settings.dart';
import 'package:responsive_dash_board/features/presenation/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/features/presenation/widgets/user_info_tile.dart';
import '../../../core/utils/assets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoTile(
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
              image: Assets.imagesAvatar3,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          DrawerItmesListView(),
          SliverFillRemaining(hasScrollBody: false, child: CustomSettings()),
        ],
      ),
    );
  }
}
