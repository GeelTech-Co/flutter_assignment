import 'package:assignment_test/features/fix/presentation/views/widgets/counter_section.dart';
import 'package:assignment_test/features/fix/presentation/views/widgets/weight_section.dart';
import 'package:flutter/material.dart';

import 'divider_item.dart';
import 'numbers_section.dart';

class FixTabBody extends StatelessWidget {
  const FixTabBody({super.key});
  @override
  Widget build(BuildContext context) {

    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        NumbersGridView(),
        DividerItem(),
        CounterSection(),
        DividerItem(),
        WeightSection()
      ],
    );
  }
}