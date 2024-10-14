import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/data/models/user_info_model.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_text_field.dart';

import '../../../core/utils/app_styles.dart';

class UserInfo extends StatelessWidget {
  static List<UserInfoModel> users = [
    UserInfoModel(title: 'Customer name', subTitle: 'Type customer name'),
    UserInfoModel(title: 'Customer Email', subTitle: 'Type customer email'),
    UserInfoModel(title: 'Item name', subTitle: 'Type customer name'),
    UserInfoModel(title: 'Item mountCustomer name', subTitle: 'USD'),
  ];
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            DetailsUserInfo(user: users[0]),
            DetailsUserInfo(user: users[1]),
          ],
        ),
        Row(
          children: [
            DetailsUserInfo(user: users[2]),
            DetailsUserInfo(user: users[3]),
          ],
        )
      ],
    );
  }
}

class DetailsUserInfo extends StatelessWidget {
  final UserInfoModel user;
  const DetailsUserInfo({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.title,
              style: AppStyles.styleMedium16(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 24, right: 16),
              child: SizedBox(
                width: 270,
                height: 60,
                child: CustomTextField(
                  hintText: user.subTitle,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
