import 'package:assignment_test/features/items/domain/entities/item_details_entity.dart';
import 'package:assignment_test/features/items/presentation/views/widgets/related_items_list_view.dart';
import 'package:flutter/material.dart';

class ItemDetailsData extends StatelessWidget {
  const ItemDetailsData({Key? key, required this.itemDetailsEntity}) : super(key: key);
  final ItemDetailsEntity itemDetailsEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers:[
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(itemDetailsEntity.imageUrl),
                Center(child: Text(itemDetailsEntity.type)),
                const SizedBox(height: 20,),
                const Text("Related Items",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                const SizedBox(height: 20,),
              ],
            ),
          ),
          RelatedItemsListView(relatedItemsList: itemDetailsEntity.related,)
        ] ,
      ),
    );
  }
}
