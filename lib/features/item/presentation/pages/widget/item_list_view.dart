import 'package:assignment_test/core/utils/strings_manger.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/item.dart';
import 'card_item_view.dart';

class ItemListView extends StatelessWidget {
  final List<Item> item;
  const ItemListView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.items),
      ),
      body: SafeArea(
        child: Column(
          children: List.generate(
              item.length, (index) => CartItemView(item: item[index])),
        ),
      ),
    );
  }
}
