import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:flutter/material.dart';

class ItemsCard extends StatelessWidget {
  final ItemsData itemsData;
  const ItemsCard({required this.itemsData, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .09,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                itemsData.name ?? '',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              Text('${itemsData.price} \$',
                  style: const TextStyle(
                    fontSize: 17,
                  ))
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
