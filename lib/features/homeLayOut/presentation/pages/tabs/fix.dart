import 'package:assignment_test/core/models/female.dart';
import 'package:assignment_test/features/homeLayOut/presentation/cubit/home_layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FixTab extends StatelessWidget {
  const FixTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
          child: SingleChildScrollView(
              child: Wrap(
            spacing: 15,
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
          )),
        ),
        const Divider(
          thickness: 5,
          color: Colors.black,
        ),
        BlocConsumer<HomeLayoutCubit, HomeLayoutState>(
          builder: (context, _) {
            return Column(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Center(
                      child: Text(
                    'Counter: ${HomeLayoutCubit.get(context).counter}',
                  )),
                ),
                ElevatedButton(
                  onPressed: () async {
                    HomeLayoutCubit.get(context).increment();
                  },
                  child: const Text('Increase Counter'),
                ),
                const Divider(
                  thickness: 5,
                  color: Colors.black,
                ),
                Text(
                    'Ideal weight: ${HomeLayoutCubit.get(context).person?.weight}'),
                ElevatedButton(
                    onPressed: () {
                      HomeLayoutCubit.get(context)
                          .setPerson(FemaleModel(25, 180));
                    },
                    child: const Text('Calculate weight'))
              ],
            );
          },
          listener: (BuildContext context, HomeLayoutState state) {},
        ),
      ],
    );
  }
}
