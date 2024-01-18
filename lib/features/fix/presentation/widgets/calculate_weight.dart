import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/model/model.dart';
import '../providers/fix_weight_provider.dart';

class CalculateWeight extends StatelessWidget {
  const CalculateWeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Consumer<FixWeightProvider>(
        builder:
            (BuildContext context, FixWeightProvider model, Widget? child) =>
            Column(
              children: [
                Text('Ideal weight: ${model.weight ?? 0}'),
                const SizedBox(height: 16),
                ElevatedButton(
                    onPressed: () {
                      model.getIdealWeight(Persons(
                          Random().nextInt(11) + 20,
                          Random().nextInt(56) + 140,
                          Random().nextInt(2) == 1
                              ? GenderEnum.male
                              : GenderEnum.female));
                    },
                    child: const Text('Calculate weight'))
              ],
            ),
      ),
    );
  }
}
