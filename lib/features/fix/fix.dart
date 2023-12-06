import 'package:assignment_test/features/fix/counter_provider/counter_provider.dart';
import 'package:assignment_test/features/fix/model/model.dart';
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
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 3.5,
              ),
              itemCount: 5, // Number of items
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.red,
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Center(
                    child: Text(
                      '$index ',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const Divider(
          thickness: 5,
          color: Colors.black,
        ),
        Provider(
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
            }),
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
