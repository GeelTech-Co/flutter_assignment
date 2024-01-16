import 'package:assignment_test/Api/item_details.dart';
import 'package:assignment_test/Providers/items_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemDetailsWidget extends StatefulWidget {
  final int? itemId;
  const ItemDetailsWidget({Key? key, this.itemId}) : super(key: key);

  @override
  State<ItemDetailsWidget> createState() => _ItemDetailsWidgetState();
}

class _ItemDetailsWidgetState extends State<ItemDetailsWidget> {
  ItemsProvider? itemsProvider;
  ItemDetails imageUrl = ItemDetails(
      imageUrl:
          "https://media.wired.com/photos/62d75d34ddaaa99a1df8e61d/master/pass/Phone-Camera-Webcam-Gear-GettyImages-1241495650.jpg");
  ItemDetails type = ItemDetails(type: "Phone");
  ItemDetails id = ItemDetails(id: 1);
  @override
  void initState() {
    super.initState();

    itemsProvider = Provider.of<ItemsProvider>(context, listen: false);

    itemsProvider!.getItemDetails(widget.itemId);
  }

  ItemDetails? itemDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Consumer<ItemsProvider>(
          builder: (BuildContext context, itemDetails, Widget? child) {
            return Center(
                child: Column(
              children: [Text(id.id.toString()),Text(type.type.toString())],
            ));
          },
        ));
  }
}
