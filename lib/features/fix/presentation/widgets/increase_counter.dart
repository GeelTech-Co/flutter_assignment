import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/fix_counter_provider.dart';

class IncreaseCounter extends StatelessWidget {
  const IncreaseCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Consumer<FixCounterProvider>(
        builder:
            (BuildContext context, FixCounterProvider model, Widget? child) =>
            Column(
              children: [
                Center(
                    child: Text(
                      'Counter: ${(model.counter ?? 0).toString()}',
                    )),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () async {
                    model.increaseCounter();
                  },
                  child: const Text('Increase Counter'),
                ),
              ],
            ),
      ),
    );
  }
}
