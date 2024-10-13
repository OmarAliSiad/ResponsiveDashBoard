import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/assets.dart';

import 'user_info_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const UserInfoTile(
            image: Assets.imagesAvatar1,
            title: 'user1',
            subTitle: 'user 1 asdasd',
          );
        },
      ),
    );
  }
}
