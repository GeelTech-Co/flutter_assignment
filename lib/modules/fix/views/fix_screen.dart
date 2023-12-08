import 'package:assignment_test/app/components.dart';
import 'package:assignment_test/modules/fix/widgets/calculate_ideal_weight_widget.dart';
import 'package:assignment_test/modules/fix/widgets/counter_widget.dart';
import 'package:assignment_test/modules/fix/widgets/five_containers.dart';
import 'package:assignment_test/resources/strings_manager.dart';
import 'package:flutter/material.dart';

class FixScreen extends StatelessWidget {
  const FixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const FiveContainers(),
        const DefaultSeparator(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: ', style: Theme.of(context).textTheme.displayMedium),
            const SizedBox(width: 20),
            const CounterWidget(),
          ],
        ),
        const DefaultSeparator(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
              StringsManager.weightCalculationSectionDescription,
              style: Theme.of(context).textTheme.displayMedium),
        ),
        const CalculateIdealWeightWidget(height: 180, age: 25),
      ],
    );
  }
}
