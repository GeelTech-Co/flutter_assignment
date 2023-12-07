import 'package:assignment_test/cubit/main_cubit.dart';
import 'package:assignment_test/models/person.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FixTab extends StatelessWidget {
  const FixTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 160,
                  child: Wrap(
                    spacing: 5,
                    children: List<Widget>.generate(
                      5,
                      (int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.red,
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Center(
                                child: Text(
                              index.toString(),
                              style: const TextStyle(color: Colors.white),
                            )),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(thickness: 6, color: Colors.black),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 100,
                    child: Center(
                      child: Text('Counter: ${MainCubit.get(context).counter}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      MainCubit.get(context).incrementCounter();
                    },
                    child: const Text('Increase Counter'),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(thickness: 6, color: Colors.black),
              ),
              Text('Ideal weight: ${MainCubit.get(context).weight}',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  MainCubit.get(context).getIdealWeight(
                      Person(age: 25, height: 180, isMale: true));
                },
                child: const Text('Calculate weight'),
              )
            ],
          ),
        );
      },
    );
  }
}
