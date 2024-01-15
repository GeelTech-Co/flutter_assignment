import 'package:assignment_test/utils/enums/gender_enum.dart';
import 'package:assignment_test/viewmodel/fix_tab/weight_calc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IdealWeightWid extends ConsumerWidget {
  const IdealWeightWid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cont = ref.watch(weightNotifier);
    return Column(
      children: [
        Text('Ideal weight: ${cont.weight}'),
        ElevatedButton(
          onPressed: () {
            cont.calculateWeight(
              height: 250,
              age: 50,
              gender: Gender.male,
            );
          },
          child: const Text('Calculate weight'),
        ),
      ],
    );
  }
}
