import 'package:assignment_test/providers/items_tab_provider.dart';
import 'package:assignment_test/shared/app_constants.dart';
import 'package:assignment_test/screens/item_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemsTab extends StatelessWidget {
  const ItemsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemsProvider>(
        builder: (BuildContext context, model, child) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          model.items.isEmpty
              ? model.isLoading?const CircularProgressIndicator():ElevatedButton(
                  onPressed: () async => await model.loadItems(),
                  child: const Text('Load items'),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: model.items.length,
                    itemBuilder: (BuildContext context, int index) => GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetailsScreen(itemDetails: model.items[index])));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: AppConstants.blueColor,
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Item Name: ${model.items[index].name}",style: const TextStyle(fontSize: 20),),
                            Text(
                                "Item Price: ${model.items[index].price.toString()}",style: const TextStyle(fontSize: 20),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      );
    });
  }
}
