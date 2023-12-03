import 'package:assignment_test/features/fix/presentation/provider/fix_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FixTab extends StatelessWidget {
  const FixTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FixProvider>(
      builder: (BuildContext context, FixProvider value, Widget? child) => Column(
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
          Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Center(
                    child: Text(
                  'Counter: ${context.read<FixProvider>().counter ?? 0}',
                )),
              ),
              ElevatedButton(
                onPressed: () async {
                  context.read<FixProvider>().increaseCounter();
                },
                child: const Text('Increase Counter'),
              )
            ],
          ),
          const Divider(
            thickness: 5,
            color: Colors.black,
          ),
          Text('Ideal weight: ${context.read<FixProvider>().person != null ? context.read<FixProvider>().person!.getIdealWeight() : 0}'),
          ElevatedButton(
              onPressed: () async {
                context.read<FixProvider>().notify();
              },
              child: const Text('Calculate weight'))
        ],
      ),
    );
  }
}
