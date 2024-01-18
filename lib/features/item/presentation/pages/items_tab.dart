import 'package:assignment_test/features/item/presentation/providers/item_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/item_data_widget.dart';

class ItemsTab extends StatelessWidget {
  const ItemsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemProvider itemProvider = Provider.of(context);
    if (itemProvider.loadData) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: itemProvider.items.length,
                itemBuilder: (BuildContext context, int index) {
                  return ItemDataWidget(
                    item: itemProvider.items[index]!,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Divider(),
                  );
                },
              ),
            )
          ],
        ),
      );
    } else if (itemProvider.isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.black,
        ),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              itemProvider.getAllItems();
            },
            child: const Text('Load items'),
          )
        ],
      );
    }
  }
}
