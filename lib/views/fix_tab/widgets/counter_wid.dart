import 'package:assignment_test/viewmodel/fix_tab/counter_cont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterWid extends ConsumerWidget {
  const CounterWid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cont = ref.watch(counterNotifier);
    return Column(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Center(
            child: Text(
              'Counter: ${cont.counter}',
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            cont.increaseCounter();
          },
          child: const Text('Increase Counter'),
        )
      ],
    );
  }
}
