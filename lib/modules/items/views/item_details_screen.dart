import 'package:assignment_test/app/components.dart';
import 'package:assignment_test/helpers/service_locator.dart';
import 'package:assignment_test/modules/items/bloc/ItemsBloc/items_bloc.dart';
import 'package:assignment_test/modules/items/widgets/item_image.dart';
import 'package:assignment_test/modules/items/widgets/single_item_from_list.dart';
import 'package:assignment_test/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemDetailsScreen extends StatelessWidget {
  final int id;

  const ItemDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.itemDetails),
      ),
      body: BlocProvider(
        create: (context) =>
        ItemsBloc(getIt.get())
          ..add(GetItemDetailsEvent(id: id)),
        child: BlocBuilder<ItemsBloc, ItemsState>(
          builder: (itemContext, itemState) {
            if (itemState is GetAllItemsLoading) {
              return const DefaultProgressIndicator();
            }
            else if (itemState is GetItemDetailsSuccess) {
              return ListView(
                  children: [
                    ItemImage(
                        imageLink: itemState.singleItemModel.imageUrl ?? ''),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text('related items: ',style: Theme.of(context).textTheme.displayLarge),
                    ),
                    ...List.generate(
                        itemState.singleItemModel.itemModel!.length, (index) =>SingleItemFromList(
                      onTap: () {

                      },
                      title: itemState.singleItemModel.itemModel![index].name ?? '',
                      price: itemState.singleItemModel.itemModel![index].price ?? 0,
                    ))
                  ]
              );
            }
            else if (itemState is GetAllItemsError) {
              return const ErrorContent();
            } else {
              return const DefaultProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}