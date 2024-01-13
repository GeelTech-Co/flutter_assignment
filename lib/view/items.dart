import 'package:assignment_test/cubit/item_cubit/item_cubit.dart';
import 'package:assignment_test/data/repositories/item_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsTab extends StatefulWidget {
  const ItemsTab({Key? key}) : super(key: key);

  @override
  State<ItemsTab> createState() => _ItemsTabState();
}

class _ItemsTabState extends State<ItemsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO Implement items List
          ElevatedButton(
            onPressed: () async {
              ItemScreenCubit.get(context).getItem();
            },
            child: const Text('Load items'),
          )
        ],
      ),
    );
  }
}

class ItemDetailsWidget extends StatelessWidget {
  ItemDetailsWidget({Key? key, required this.itemId}) : super(key: key);
  String itemId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ItemScreenCubit(ItemRepoImpl())..getItemDetail(itemId: itemId),
      child: BlocBuilder<ItemScreenCubit, ItemScreenState>(
          builder: (context, state) {
        var itemScreenCubit = ItemScreenCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: Center(
              child: Column(
            children: [
              Image.network(itemScreenCubit.itemDetailModel!.imageUrl ?? ''),
              Text(itemScreenCubit.itemDetailModel!.type ?? ''),
              //TODO Implement Related items List
            ],
          )),
        );
      }),
    );
  }
}
