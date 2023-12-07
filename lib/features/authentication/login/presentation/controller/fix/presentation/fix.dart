import 'package:assignment_test/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../fix_cubit.dart';

class FixTab extends StatelessWidget {
  FixTab({Key? key}) : super(key: key);
  Person? person;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
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
        ),
        const Divider(
          thickness: 5,
          color: Colors.black,
        ),
        BlocProvider(
          create: (context) => FixCubit(),
          child: BlocBuilder<FixCubit, FixState>(
            builder: (context, state) {
              return Column(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Center(
                        child: Text(
                      'Counter:${context.read<FixCubit>().counter.toString()}',
                    )),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      context.read<FixCubit>().increaseCounter();
                    },
                    child: const Text('Increase Counter'),
                  )
                ],
              );
            },
          ),
        ),
        const Divider(
          thickness: 5,
          color: Colors.black,
        ),
        Text('Ideal weight: ${person?.weight}'),
        ElevatedButton(onPressed: () {}, child: const Text('Calculate weight'))
      ],
    );
  }
}
