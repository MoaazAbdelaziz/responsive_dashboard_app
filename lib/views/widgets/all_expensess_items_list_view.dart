import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/core/utils/app_assets.dart';
import 'package:responsive_dashboard/views/widgets/all_expensess_item.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  List<AllExpensessItemModel> allExpensessItemModel = const [
    AllExpensessItemModel(
      image: AppAssets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensessItemModel(
      image: AppAssets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensessItemModel(
      image: AppAssets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: allExpensessItemModel.asMap().entries.map((entry) {
        int index = entry.key;
        var item = entry.value;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12.0 : 0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (activeIndex != index) {
                    activeIndex = index;
                  }
                });
              },
              child: AllExpensessItem(
                allExpensessItemModel: item,
                isSelected: activeIndex == index,
              ),
            ),
          ),
        );
      }).toList(),

      //children:  allExpensessItemModel
      //     .map((item) => Expanded(
      //           child: AllExpensessItem(
      //             allExpensessItemModel: item,
      //           ),
      //         ))
      //     .toList(),
    );
  }
}
