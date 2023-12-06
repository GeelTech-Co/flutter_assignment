import 'package:assignment_test/features/fix/counter_provider/counter_provider.dart';
import 'package:assignment_test/features/fix/model/model.dart';
import 'package:assignment_test/features/fix/widgets/counter_widget.dart';
import 'package:assignment_test/features/fix/widgets/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FixTab extends StatefulWidget {
  const FixTab({Key? key}) : super(key: key);

  @override
  State<FixTab> createState() => _FixTabState();
}

class _FixTabState extends State<FixTab> {
  Person? person;

  double? result = 0;

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
        Text('Ideal weight:$result '),
        ElevatedButton(
            onPressed: () {
              setState(() {
                result = Person().getIdealWeight(180, 20, true);
              });

              // person?.getIdealWeight();
            },
            child: const Text('Calculate weight'))
      ],
    );
  }
}
