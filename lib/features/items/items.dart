import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:assignment_test/features/items/controlles/items_cubit.dart';
import 'package:assignment_test/features/items/controlles/items_state.dart';
import 'package:assignment_test/features/items/widget/item_card.dart';

class ItemsTab extends StatelessWidget {
  const ItemsTab({
    super.key,
  });

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
              itemBuilder: (context, index) =>
                  ItemCardComponent(model: state.items[index]),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: state.items.length,
            );
          } else if (state is ItemsErrorState) {
            // Check for the error message to identify the lack of internet connection
            if (state.errorMessage
                .contains("No address associated with hostname")) {
              // Show a SnackBar for no internet connection
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('No internet connection'),
                    backgroundColor:
                        Colors.orange, // Customize the background color
                  ),
                );
              });
            }
            return const Center(
              child: Text('Error:'),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (await _isConnected()) {
            BlocProvider.of<ItemsCubit>(context).fetchItems();
          } else {
            // Show a SnackBar for no internet connection
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('No internet connection'),
                backgroundColor: Colors.orange,
              ),
            );
          }
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

Future<bool> _isConnected() async {
  var connectivityResult = await Connectivity().checkConnectivity();
  return connectivityResult != ConnectivityResult.none;
}
