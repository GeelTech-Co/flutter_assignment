import 'package:assignment_test/features/fix/counter_provider/counter_provider.dart';
import 'package:assignment_test/features/fix/model/model.dart';
import 'package:assignment_test/features/fix/widgets/counter_widget.dart';
import 'package:assignment_test/features/fix/widgets/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FixTab extends StatelessWidget {
  FixTab({Key? key}) : super(key: key);
  Person? person;

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<FixProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ItemsShow(),
        const Divider(
          thickness: 5,
          color: Colors.black,
        ),
        IncrementCounter(counterModel: counterModel),
        const Divider(
          thickness: 5,
          color: Colors.black,
        ),
        Text('Ideal weight: ${person?.weight}'),
        ElevatedButton(
            onPressed: () {
              // person = Person(25,180);
              person?.getIdealWeight();
            },
            child: const Text('Calculate weight'))
      ],
    );
  }
}

