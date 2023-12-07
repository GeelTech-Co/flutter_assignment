import 'package:flutter/material.dart';
import '../widget/count_weigth.dart';
import '../widget/count_widget.dart';
import '../widget/item_count_widget.dart';

class FixTabPage extends StatelessWidget {
 const FixTabPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         ItemCountWidget(),
         CountWidget(),
         CountWeight()
      ],
    );
  }
}

