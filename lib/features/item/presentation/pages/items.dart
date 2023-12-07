import 'package:assignment_test/core/widget/toast_messages.dart';
import 'package:assignment_test/features/item/presentation/controller/cubit/item_cubit.dart';
import 'package:assignment_test/features/item/presentation/pages/widget/item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsTab extends StatelessWidget {
  const ItemsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<ItemCubit, ItemState>(
          builder: (context, state) {
            if (state is ItemLoaded) {
              return ElevatedButton(
                onPressed: () async {
                  context.read<ItemCubit>().getItem();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ItemListView(item: state.item)));
                },
                child: const Text('Load items'),
              );
            } else if (state is ItemError) {
              errorBotToast(title: state.message);
            }
            return ElevatedButton(
              onPressed: () {
                context.read<ItemCubit>().getItem();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ItemListView(item: [])));
              },
              child: const Text('Load items'),
            );
          },
        )
      ],
    );
  }
}

class ItemDetailsWidget extends StatefulWidget {
  const ItemDetailsWidget({Key? key}) : super(key: key);

  @override
  State<ItemDetailsWidget> createState() => _ItemDetailsWidgetState();
}

class _ItemDetailsWidgetState extends State<ItemDetailsWidget> {
  dynamic itemDetails; //TODO Change type

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Image.network(itemDetails!.imageUrl ?? ''),
          Text(itemDetails!.type ?? ''),
          //TODO Implement Related items List
        ],
      )),
    );
  }
}
