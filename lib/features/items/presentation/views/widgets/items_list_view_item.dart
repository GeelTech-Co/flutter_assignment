import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/router_manager.dart';
import '../../../domain/entities/item_entity.dart';

class ItemsListViewItem extends StatelessWidget {
  const ItemsListViewItem({Key? key, required this.item}) : super(key: key);
  final ItemEntity item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRouter.itemDetailsPath,extra: item.id);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.black12,
        child: Row(
          children: [
            Text(item.name),
            const Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Price'),
                const SizedBox(
                  height: 5,
                ),
                Text(item.price.toString()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
