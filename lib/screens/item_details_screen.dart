import 'package:assignment_test/shared/app_constants.dart';
import 'package:assignment_test/shared/app_strings.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key, required this.itemDetails});

  final ItemModel itemDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
            children: [
              Image.network(itemDetails.imageUrl ?? AppConstants.noImageUrl),
              Text(itemDetails.type ?? AppStrings.noTypeProvided),
              itemDetails.related != null?Expanded(
                child: ListView.builder(
                  itemCount: itemDetails.related!.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: AppConstants.blueColor,
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Item Name: ${itemDetails.related![index].name}",style: const TextStyle(fontSize: 20),),
                        Text(
                          "Item Price: ${itemDetails.related![index].price.toString()}",style: const TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ),
              ):const SizedBox(),
            ],
          )),
    );
  }
}
