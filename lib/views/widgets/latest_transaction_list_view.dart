import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/user_info_model.dart';
import 'package:responsive_dashboard/core/utils/app_assets.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: AppAssets.imagesAvatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi120@gmail.com',
    ),
    UserInfoModel(
      image: AppAssets.imagesAvatar2,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi120@gmail.com',
    ),
    UserInfoModel(
      image: AppAssets.imagesAvatar3,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi120@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(userInfoModel: items[index]),
          );
        },
      ),
    );
  }
}
