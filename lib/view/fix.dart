import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/model/person_model.dart';

class FixTab extends StatelessWidget {
  FixTab({Key? key}) : super(key: key);
  Person? person;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
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
          ChangeNotifierProvider(
            create: (context) => FixProvider(),
            builder: (context, _) {
              return Column(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Center(
                      child: Text(
                          'Counter: ${context.watch<FixProvider>().counter.toString()}'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      context.read<FixProvider>().increaseCounter();
                    },
                    child: const Text('Increase Counter'),
                  ),
                  const Divider(
                    thickness: 5,
                    color: Colors.black,
                  ),
                  Center(
                    child: Text(
                        'Ideal weight: ${context.watch<FixProvider>().idealWeight.toString()}'),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<FixProvider>()
                            .getIdealWeight(Persons(25, 180, Gender.male));
                      },
                      child: const Text('Calculate weight'))
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class FixProvider extends ChangeNotifier {
  int? counter;
  double? idealWeight;

  FixProvider() {
    counter = 0;
    idealWeight = 0;
  }

  void increaseCounter() {
    counter = counter! + 1;
    notifyListeners();
  }

  void getIdealWeight(Persons persons) {
    if (persons.gender == Gender.male) {
      idealWeight = persons.height / persons.age * 10;
      notifyListeners();
    } else {
      idealWeight = persons.height / persons.age;
      notifyListeners();
    }
  }
}
