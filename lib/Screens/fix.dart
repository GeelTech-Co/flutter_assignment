import 'package:assignment_test/Models/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/fix_provider.dart';

class FixTab extends StatelessWidget {
  FixTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Wrap(
          spacing: 9.0,
          runSpacing: 10.0,
          children: [
            for (var i = 0; i < 2; i++)
              Container(
                color: Colors.red,
                height: 40,
                width: MediaQuery.of(context).size.width * 0.4,
                child: Center(
                  child: Text(
                    '$i',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            for (var i = 2; i < 5; i++)
              Container(
                color: Colors.red,
                height: 40,
                width: MediaQuery.of(context).size.width * 0.4,
                child: Center(
                  child: Text(
                    '$i',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
        const Divider(
          thickness: 5,
          color: Colors.black,
        ),
        ListenableProvider(
            create: (context) => FixProvider(),
            builder: (context, _) {
              return Column(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Center(
                        child: Text(
                      'Counter: ${context.watch<FixProvider>().counter!.toString()}',
                    )),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      context.read<FixProvider>().increaseCounter();
                    },
                    child: const Text('Increase Counter'),
                  )
                ],
              );
            }),
        const Divider(
          thickness: 5,
          color: Colors.black,
        ),
        Text(
            'Ideal weight: ${context.watch<FixProvider>().idealWeight.toString().split('.').first}'),
        ElevatedButton(
            onPressed: () {
              context
                  .read<FixProvider>()
                  .getIdealWeight(PersonsWeight(45, 175, Gender.male));
            },
            child: const Text('Calculate weight'))
      ],
    );
  }
}

