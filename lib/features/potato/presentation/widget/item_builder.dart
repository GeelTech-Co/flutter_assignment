import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../manager/cubit/potato_cubit.dart';

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({super.key, required this.cubit});

  final PotatoCubit cubit;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: cubit.item!.body.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            context.go('/itemDetailsPage');
          },
          child: ListTile(
            title: Text('${cubit.item!.body[index].name}'),
            subtitle:
                Text('Price :${cubit.item!.body[index].price}'),
            // You can customize the ListTile as needed
          ),
        );
      },
    );
  }
  }

