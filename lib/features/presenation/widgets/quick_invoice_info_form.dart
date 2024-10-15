import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/data/models/user_info_model.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_button.dart';
import 'package:responsive_dash_board/features/presenation/widgets/details_user_info.dart';

class QuickInvoiceForm extends StatelessWidget {
  static List<UserInfoModel> users = [
    UserInfoModel(title: 'Customer name', subTitle: 'Type customer name'),
    UserInfoModel(title: 'Customer Email', subTitle: 'Type customer email'),
    UserInfoModel(title: 'Item name', subTitle: 'Type customer name'),
    UserInfoModel(title: 'Item mountCustomer name', subTitle: 'USD'),
  ];
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: DetailsUserInfo(user: users[0])),
            Expanded(child: DetailsUserInfo(user: users[1])),
          ],
        ),
        Row(
          children: [
            Expanded(child: DetailsUserInfo(user: users[2])),
            Expanded(child: DetailsUserInfo(user: users[3])),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const Row(
          children: [
            CustomButton(
              title: 'Add more details',
              textColor: Color(0xff4EB7F2),
            ),
            SizedBox(
              width: 24,
            ),
            CustomButton(
              title: 'Send Money',
              backgroundColor: Color(0xff4EB7F2),
            ),
          ],
        ),
      ],
    );
  }
}
