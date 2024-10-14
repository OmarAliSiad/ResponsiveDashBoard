import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/data/models/user_info_model.dart';
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
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com'),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          const DrawerItmesListView(),
          const SliverFillRemaining(
              hasScrollBody: false, child: CustomSettings()),
        ],
      ),
    );
  }
}
