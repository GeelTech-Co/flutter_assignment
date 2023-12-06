
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemDetailsWidget extends StatefulWidget {
  const ItemDetailsWidget({Key? key}) : super(key: key);

  @override
  State<ItemDetailsWidget> createState() => _ItemDetailsWidgetState();
}

class _ItemDetailsWidgetState extends State<ItemDetailsWidget> {
  dynamic itemDetails; //TODO Change type

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
            children: [
              Image.network(itemDetails!.imageUrl ?? ''),
              Text(itemDetails!.type ?? ''),
              //TODO Implement Related items List
            ],
          )),
    );
  }
}
