
import 'package:assignment_test/features/fix/data/model/model.dart';
import 'package:flutter/material.dart';

import '../widgets/calculate_weight.dart';
import '../widgets/increase_counter.dart';

class FixTab extends StatelessWidget {
  FixTab({Key? key}) : super(key: key);
  Person? person;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Wrap(
          children: [
            for (var i = 0; i < 5; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Center(
                      child: Text(
                    '$i',
                    style: const TextStyle(color: Colors.white),
                  )),
                ),
              ),
          ],
        ),
        const Divider(
          thickness: 5,
          color: Colors.black,
        ),
        const IncreaseCounter(),
        const Divider(
          thickness: 5,
          color: Colors.black,
        ),
        const CalculateWeight(),
      ],
    );
  }
}
