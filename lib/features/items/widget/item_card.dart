import 'package:assignment_test/features/items/model/item_model.dart';
import 'package:flutter/material.dart';

class ItemCardComponent extends StatelessWidget {
  const ItemCardComponent({super.key, required this.model});

  final ItemModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 100,
        color: Colors.cyanAccent,
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "name: ${model.name}",
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 8),
            Text(
              "price: ${model.price}",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
