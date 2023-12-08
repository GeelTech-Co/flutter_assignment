import 'package:flutter/material.dart';

import '../../../domain/entities/item_entity.dart';
import 'items_list_view_item.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({Key? key, required this.itemList}) : super(key: key);
  final List<ItemEntity> itemList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return ItemsListViewItem(item: itemList[index],);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 20,
            );
          },
          itemCount: itemList.length),
    );
  }
}
