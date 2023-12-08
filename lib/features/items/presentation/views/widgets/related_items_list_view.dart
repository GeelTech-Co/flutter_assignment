import 'package:flutter/material.dart';

import '../../../domain/entities/item_entity.dart';
import 'items_list_view_item.dart';

class RelatedItemsListView extends StatelessWidget {
  const RelatedItemsListView({Key? key, required this.relatedItemsList}) : super(key: key);
  final List<ItemEntity> relatedItemsList;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        itemBuilder: (context, index) {
          return ItemsListViewItem(item: relatedItemsList[index],);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: relatedItemsList.length);
  }
}
