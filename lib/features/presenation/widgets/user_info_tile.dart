import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/data/models/user_info_model.dart';

class UserInfoTile extends StatelessWidget {
  final UserInfoModel userInfoModel;
  const UserInfoTile({super.key, required this.userInfoModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image!),
        title: SizedBox(
          width: 123,
          height: 20,
          child: Text(userInfoModel.title, style: AppStyles.styleSemiBold16()),
        ),
        subtitle: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: SizedBox(
            width: 139,
            height: 15,
            child:
                Text(userInfoModel.subTitle, style: AppStyles.styleRegular14()),
          ),
        ),
      ),
    );
  }
}
