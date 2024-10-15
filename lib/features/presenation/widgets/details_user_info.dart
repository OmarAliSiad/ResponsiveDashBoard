import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_text_field.dart';

import '../../../core/utils/app_styles.dart';
import '../../data/models/user_info_model.dart';

class DetailsUserInfo extends StatelessWidget {
  final UserInfoModel user;
  const DetailsUserInfo({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          user.title,
          style: AppStyles.styleMedium16(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 24, right: 16),
          child: CustomTextField(
            hintText: user.subTitle,
          ),
        ),
      ],
    );
  }
}
