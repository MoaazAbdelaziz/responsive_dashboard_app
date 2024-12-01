import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/drawer_item_model.dart';
import 'package:responsive_dashboard/core/utils/app_assets.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> drawerItems = [
    const DrawerItemModel(
      title: 'Dashboard',
      image: AppAssets.imagesDashboard,
    ),
    const DrawerItemModel(
      title: 'My Transaction',
      image: AppAssets.imagesMyTransctions,
    ),
    const DrawerItemModel(
      title: 'Statistics',
      image: AppAssets.imagesStatistics,
    ),
    const DrawerItemModel(
      title: 'My Transaction',
      image: AppAssets.imagesMyTransctions,
    ),
    const DrawerItemModel(
      title: 'Wallet Account',
      image: AppAssets.imagesWalletAccount,
    ),
    const DrawerItemModel(
      title: 'My Investments',
      image: AppAssets.imagesMyInvestments,
    ),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          setState(() {
            if (activeIndex != index) {
              activeIndex = index;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(
            drawerItemModel: drawerItems[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
