import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/drawer_item_model.dart';
import 'package:responsive_dashboard/core/utils/app_assets.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({
    super.key,
  });

  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      title: 'Dashboard',
      image: AppAssets.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transaction',
      image: AppAssets.imagesMyTransctions,
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: AppAssets.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'My Transaction',
      image: AppAssets.imagesMyTransctions,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      image: AppAssets.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: AppAssets.imagesMyInvestments,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: drawerItems.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: DrawerItem(drawerItemModel: drawerItems[index]),
      ),
    );
  }
}
