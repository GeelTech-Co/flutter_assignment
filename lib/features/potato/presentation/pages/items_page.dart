import 'package:assignment_test/features/potato/presentation/widget/load_item_widget.dart';
import 'package:flutter/material.dart';

class ItemsTabPage extends StatelessWidget {
  const ItemsTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LoadItemsWidget(),
      ],
    );
  }
}
