import 'package:assignment_test/app/components.dart';
import 'package:assignment_test/helpers/service_locator.dart';
import 'package:assignment_test/modules/items/bloc/ItemsBloc/items_bloc.dart';
import 'package:assignment_test/modules/items/widgets/single_item_from_list.dart';
import 'package:assignment_test/resources/routes_maanger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ItemsBloc(getIt.get())..add(GetAllItemsEvent()),
      child: BlocBuilder<ItemsBloc, ItemsState>(
        builder: (itemsContext, itemsState) {
          if (itemsState is GetAllItemsLoading) {
            return const DefaultProgressIndicator();
          } else if (itemsState is GetAllItemsSuccess) {
            return ListView(
              children: List.generate(
                  itemsState.itemsList.length,
                  (index) => SingleItemFromList(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.itemDetailsRoute,
                              arguments: ItemDetailsScreenArgs(
                                  id: itemsState.itemsList[index].id ?? 1));
                        },
                        title: itemsState.itemsList[index].name ?? '',
                        price: itemsState.itemsList[index].price ?? 0,
                      )),
            );
          } else if (itemsState is GetAllItemsError) {
            return ErrorContent();
          } else {
            return const DefaultProgressIndicator();
          }
        },
      ),
    );
  }
}


