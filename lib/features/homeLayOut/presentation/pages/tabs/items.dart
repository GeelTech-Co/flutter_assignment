import 'package:assignment_test/features/homeLayOut/presentation/cubit/home_layout_cubit.dart';
import 'package:assignment_test/features/homeLayOut/presentation/widgets/items_card.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //TODO Implement items List
        ElevatedButton(
          onPressed: () async {
            HomeLayoutCubit.get(context).getItems();
          },
          child: const Text('Load items'),
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
  dynamic itemDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeLayoutCubit, HomeLayoutState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state is GetItemsSuccess
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return ItemsCard(
                        itemsData: HomeLayoutCubit.get(context).items[index]);
                  },
                )
              : state is LoadingState
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Center(
                      child: Column(
                      children: [
                        Image.network(itemDetails!.imageUrl ?? ''),
                        Text(itemDetails!.type ?? ''),
                      ],
                    ));
        },
      ),
    );
  }
}
