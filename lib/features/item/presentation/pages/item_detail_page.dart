import 'package:assignment_test/features/item/presentation/widgets/item_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/active_item_provider.dart';

class ItemDetailsPage extends StatelessWidget {
  const ItemDetailsPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Consumer<ActiveItemProvider>(
      builder: (BuildContext context, ActiveItemProvider model, Widget? child) {
        model.getActiveItem(id: id);
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: model.isLoading
                    ? const CircularProgressIndicator(
                        color: Colors.black,
                      )
                    : Column(
                        children: [
                          Image.network(model.activeItem?.imageUrl ?? ''),
                          Row(
                            children: [
                              Text(model.activeItem?.type ?? ''),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: ListView.separated(
                              itemCount: model.activeItem?.related?.length ?? 0,
                              itemBuilder: (BuildContext context, int index) {
                                return ItemDataWidget(
                                  item: model.activeItem!.related![index],
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  child: Divider(),
                                );
                              },
                            ),
                          )
                        ],
                      )),
          ),
        );
      },
    );
  }
}
