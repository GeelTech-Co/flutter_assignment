import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widget/load_item_details_widget.dart';

class ItemDetailsPage extends StatelessWidget {
  const ItemDetailsPage({
    Key? key,
   required this.id,
  }) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LoadItemDetailsWidget(id: id,),
    );
  }
}
