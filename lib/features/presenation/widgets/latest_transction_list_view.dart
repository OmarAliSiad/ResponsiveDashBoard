import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/assets.dart';
import 'package:responsive_dash_board/features/data/models/user_info_model.dart';

import 'user_info_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  static List<UserInfoModel> users = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  const LatestTransctionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: users.map(
          (e) {
            return IntrinsicWidth(
              child: UserInfoTile(userInfoModel: e),
            );
          },
        ).toList(),
      ),
    );
    // return SizedBox(
    //   height: 90,
    //   child: ListView.builder(
    //     itemCount: 3,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoTile(
    //           userInfoModel: users[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
