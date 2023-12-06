import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:flutter/material.dart';

class ItemsCard extends StatelessWidget {
  final ItemsData itemsData;
  const ItemsCard({required this.itemsData, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        children: [
          Text(itemsData.name ?? ''),
          Text(itemsData.price.toString())
        ],
      ),
    );
  }
}
