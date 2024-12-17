import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/views/widgets/active_inactive_all_expensees_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key,
      required this.allExpensessItemModel,
      required this.isSelected});
  final AllExpensessItemModel allExpensessItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(allExpensessItemModel: allExpensessItemModel)
        : InActiveAllExpensessItem(
            allExpensessItemModel: allExpensessItemModel,
          );
  }
}
