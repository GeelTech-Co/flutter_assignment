// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assignment_test/features/homeLayOut/presentation/widgets/items_card.dart';
import 'package:flutter/material.dart';

import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:go_router/go_router.dart';

class ItemsListBuilder extends StatelessWidget {
  final List<ItemsData> itemsList;
  const ItemsListBuilder({
    Key? key,
    required this.itemsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: itemsList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            var param1 = itemsList[index].id.toString();
            context.goNamed("details", pathParameters: {'id1': param1});
          },
          child: ItemsCard(itemsData: itemsList[index]),
        );
      },
    );
  }
}
