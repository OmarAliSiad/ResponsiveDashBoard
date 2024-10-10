import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class UserInfoTile extends StatelessWidget {
  final String title, subTitle, image;
  const UserInfoTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
          leading: SvgPicture.asset(image),
          title: Text(title, style: AppStyles.styleSemiBold16()),
          subtitle: Text(subTitle, style: AppStyles.styleRegular14())),
    );
  }
}
