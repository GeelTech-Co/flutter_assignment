import 'package:assignment_test/features/items/controlles/items_cubit.dart';
import 'package:assignment_test/features/items/controlles/items_state.dart';
import 'package:assignment_test/features/items/widget/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsTab extends StatelessWidget {
  const ItemsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ItemsCubit, ItemsState>(
        builder: (context, state) {
          if (state is ItemsInitialState) {
            return const Center(child: SizedBox.shrink());
          } else if (state is ItemsLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ItemsLoadedState) {
            // Display your items using state.items
            return ListView.separated(
              itemBuilder: (context, index) => ItemCardComponent(model: state.items[index]),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: state.items.length,
            );
          } else if (state is ItemsErrorState) {
            return Center(
              child: Text('Error: ${state.errorMessage}'),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<ItemsCubit>(context).fetchItems();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
