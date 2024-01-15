import 'package:assignment_test/views/fix_tab/widgets/counter_wid.dart';
import 'package:assignment_test/views/fix_tab/widgets/ideal_weight.dart';
import 'package:assignment_test/views/fix_tab/widgets/number_grid.dart';
import 'package:flutter/material.dart';

class FixTab extends StatelessWidget {
  const FixTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        NumbersGrid(),
        Divider(
          thickness: 5,
          color: Colors.black,
        ),
        CounterWid(),
        Divider(
          thickness: 5,
          color: Colors.black,
        ),
        IdealWeightWid(),
      ],
    );
  }
}
