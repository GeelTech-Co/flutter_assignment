import 'package:assignment_test/models/items/items_res.dart';
import 'package:assignment_test/viewmodel/items/items_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemsTab extends ConsumerWidget {
  const ItemsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cont = ref.watch(itemsProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        cont.items.isEmpty
            ? ElevatedButton(
                onPressed: () async {
                  await cont.getItems();
                },
                child: Text(cont.isLoading ? 'Loading' : 'Load items'),
              )
            : cont.hasError
                ? const Center(
                    child: Text('An error has occured'),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: cont.items.length,
                      itemBuilder: (ctx, ind) {
                        Item item = cont.items[ind];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            onTap: () {
                              cont.onItemSelected(item.id, context);
                            },
                            title: Text(item.name),
                            trailing: Text(
                              item.price.toStringAsFixed(2),
                            ),
                          ),
                        );
                      },
                    ),
                  )
      ],
    );
  }
}

class ItemDetailsWidget extends ConsumerWidget {
  const ItemDetailsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cont = ref.watch(itemsDetailsProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: cont.when(
            data: (res) {
              return Column(
                children: [
                  Image.network(
                    res.imageUrl,
                  ),
                  Text(res.type),
                  Expanded(
                    child: ListView.builder(
                      itemCount: res.related.length,
                      itemBuilder: (context, ind) {
                        Item item = res.related[ind];
                        return ListTile(
                          title: Text(item.name),
                          trailing: Text(
                            item.price.toStringAsFixed(2),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
            error: (e, s) {
              debugPrint(e.toString());
              return const Text('An error has occ');
            },
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
