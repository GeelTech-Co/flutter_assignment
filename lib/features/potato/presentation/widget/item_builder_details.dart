
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../manager/cubit/potato_cubit.dart';

class ItemBuilderDetails extends StatelessWidget {
  const ItemBuilderDetails({super.key, required this.cubit});

  final PotatoCubit cubit;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: cubit.itemDetails!.body.related.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('${cubit.itemDetails!.body.related[index].name}'),
          subtitle:
              Text('Price :${cubit.itemDetails!.body.related[index].price}'),
          // You can customize the ListTile as needed
        );
      },
    );
  } 
}