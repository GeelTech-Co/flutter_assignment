import 'package:assignment_test/core/config/route/app_route_name.dart';
import 'package:assignment_test/features/item/data/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class ItemDataWidget extends StatelessWidget {
  final ItemDataModel item;

  const ItemDataWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouteName.activeItem, extra :item.id??0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.6),
              child: Text(
                item.name ?? '',
              ),
            ),
            const Spacer(),
            Text(
              '${item.price ?? ''}\$',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
