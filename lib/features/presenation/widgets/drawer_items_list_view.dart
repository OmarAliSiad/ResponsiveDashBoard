import 'package:flutter/material.dart';
import '../../../core/utils/app_styles.dart';
import '../../../core/utils/assets.dart';
import '../../data/models/drawer_item.dart';
import 'drawer_item.dart';

class DrawerItmesListView extends StatefulWidget {
  const DrawerItmesListView({
    super.key,
  });
  @override
  State<DrawerItmesListView> createState() => _DrawerItmesListViewState();
}

class _DrawerItmesListViewState extends State<DrawerItmesListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    DrawerItemModel(
        title: 'Dashboard',
        image: Assets.imagesDashboard,
        textStyle: AppStyles.styleRegular16()),
    DrawerItemModel(
      title: 'My Transaction',
      image: Assets.imagesMyTransctions,
      textStyle: AppStyles.styleRegular16(),
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: Assets.imagesStatistics,
      textStyle: AppStyles.styleRegular16(),
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      image: Assets.imagesWalletAccount,
      textStyle: AppStyles.styleRegular16(),
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesMyInvestments,
      textStyle: AppStyles.styleRegular16(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
