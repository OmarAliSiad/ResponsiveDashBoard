import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dash_board/features/data/providers/select_items_provider.dart';
import '../../../core/utils/app_styles.dart';
import '../../../core/utils/assets.dart';
import '../../data/models/drawer_item.dart';
import 'drawer_item.dart';

class DrawerItmesListView extends StatefulWidget {
  const DrawerItmesListView({super.key});

  @override
  State<DrawerItmesListView> createState() => _DrawerItmesListViewState();
}

class _DrawerItmesListViewState extends State<DrawerItmesListView> {
  late final List<DrawerItemModel> items; // Use late initialization
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    items = [
      DrawerItemModel(
        title: 'Dashboard',
        image: Assets.imagesDashboard,
        textStyle: AppStyles.styleRegular16(context),
      ),
      DrawerItemModel(
        title: 'My Transaction',
        image: Assets.imagesMyTransctions,
        textStyle: AppStyles.styleRegular16(context),
      ),
      DrawerItemModel(
        title: 'Statistics',
        image: Assets.imagesStatistics,
        textStyle: AppStyles.styleRegular16(context),
      ),
      DrawerItemModel(
        title: 'Wallet Account',
        image: Assets.imagesWalletAccount,
        textStyle: AppStyles.styleRegular16(context),
      ),
      DrawerItemModel(
        title: 'My Investments',
        image: Assets.imagesMyInvestments,
        textStyle: AppStyles.styleRegular16(context),
      ),
    ];
    // Initialize the items list here
  }

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (context.read<ProviderSelectItems>().activeIndex != index) {
              context.read<ProviderSelectItems>().updateIndex(index);
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive:
                  context.watch<ProviderSelectItems>().activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
