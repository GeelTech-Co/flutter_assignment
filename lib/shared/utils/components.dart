import 'package:assignment_test/models/item_model.dart';
import 'package:assignment_test/shared/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.itemModel, });
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kItemScreen, extra: itemModel);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: SizedBox(
          height: 60,
          width: MediaQuery.sizeOf(context).height*0.18,
          child: Card(
            elevation: 5,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(itemModel.name.toString()),
                  Text('${itemModel.price} \$'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
