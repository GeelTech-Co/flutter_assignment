import 'package:assignment_test/features/fix/counter_provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IncrementCounter extends StatelessWidget {
  const IncrementCounter({
    super.key,
    required this.counterModel,
  });

  final FixProvider counterModel;

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (context) => FixProvider(),
        builder: (context, _) {
          return Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Center(
                  child: Text(
                    'Counter:${counterModel.getCounter()}',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  counterModel.increaseCounter();
                },
                child: const Text('Increase Counter'),
              )
            ],
          );
        });
  }
}
