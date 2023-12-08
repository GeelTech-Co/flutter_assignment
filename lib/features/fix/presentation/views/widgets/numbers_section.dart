import 'package:flutter/material.dart';

import 'number_item.dart';

class NumbersGridView extends StatelessWidget {
  const NumbersGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: GridView.count(
        childAspectRatio: (MediaQuery.of(context).size.width*0.30)/40 ,
        crossAxisCount: 2,
        children: List.generate(
          5,
              (index) {
            return NumberItem(index: index,);
          },
        ),
      ),
    );
  }
}
