import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/fix_provider.dart';

class CounterSection extends StatelessWidget {
  const CounterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<FixProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return SizedBox(
              width: 100,
              height: 100,
              child: Center(child: Text(
                'Counter: ${value.counter.toString()}',)),
            );
          },
        ),
        ElevatedButton(
          onPressed: () {
            context.read<FixProvider>().increaseCounter();
          },
          child: const Text('Increase Counter'),
        )
      ],
    );
  }
}
