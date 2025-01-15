import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/income_item_details_model.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeItemDetailsModel});
  final IncomeItemDetailsModel incomeItemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: incomeItemDetailsModel.color,
        ),
      ),
      title: Text(
        incomeItemDetailsModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        incomeItemDetailsModel.value,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
