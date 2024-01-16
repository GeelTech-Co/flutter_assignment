import 'package:assignment_test/Providers/items_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ItemsTab extends StatefulWidget {
  const ItemsTab({Key? key}) : super(key: key);

  @override
  State<ItemsTab> createState() => _ItemsTabState();
}

class _ItemsTabState extends State<ItemsTab> {
  ItemsProvider? itemsProvider;

  @override
  void initState() {
    super.initState();
    itemsProvider = ItemsProvider();
    itemsProvider = Provider.of<ItemsProvider>(context, listen: false);

    itemsProvider!.getItems();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<ItemsProvider>(
      builder: (BuildContext context, itemProvider, Widget? child) {
        return ListView.builder(
            itemCount: itemProvider.items1.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    context.go('/items-details');
                  },
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'id : ${itemProvider.items1[index].id}',
                            style: TextStyle(fontSize: size.height * 0.018),
                          ),
                          Text(
                            'name : ${itemProvider.items1[index].name}',
                            style: TextStyle(fontSize: size.height * 0.018),
                          ),
                          Text(
                            'price : ${itemProvider.items1[index].price}',
                            style: TextStyle(fontSize: size.height * 0.018),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            });
      },
    );
  }
}

