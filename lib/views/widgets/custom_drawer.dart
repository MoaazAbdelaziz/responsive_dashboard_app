import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_assets.dart';
import 'package:responsive_dashboard/views/widgets/drawer_items_list_view.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: AppAssets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
          SizedBox(height: 8),
          DrawerItemsListView(),
        ],
      ),
    );
  }
}