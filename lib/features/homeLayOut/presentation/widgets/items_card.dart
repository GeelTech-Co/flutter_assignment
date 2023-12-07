import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:flutter/material.dart';

class ItemsCard extends StatelessWidget {
  final ItemsData itemsData;
  const ItemsCard({required this.itemsData, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        children: [
          Row(
            children: [
              Text(itemsData.name ?? ''),
              const Spacer(),
              Text(itemsData.price.toString())
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider()
        ],
      ),
    );
  }
}
