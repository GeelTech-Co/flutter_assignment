import 'package:assignment_test/features/items/widget/item_card.dart';
import 'package:flutter/material.dart';

class ItemsTab extends StatefulWidget {
  const ItemsTab({Key? key}) : super(key: key);

  @override
  State<ItemsTab> createState() => _ItemsTabState();
}

class _ItemsTabState extends State<ItemsTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => const ItemCardComponent(),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 15);
  }
}

