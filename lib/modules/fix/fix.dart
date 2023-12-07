import 'package:assignment_test/layout/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FixTab extends StatelessWidget {
  const FixTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Column(
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
                    'Counter: ${AppCubit.get(context).counter}',
                  )),
                ),
                ElevatedButton(
                  onPressed: () async {
                    AppCubit.get(context).increaseCounter();
                  },
                  child: const Text('Increase Counter'),
                )
              ],
            ),
            const Divider(
              thickness: 5,
              color: Colors.black,
            ),
            Text('Ideal weight: ${AppCubit.get(context).person!.weight}'),
            ElevatedButton(
                onPressed: () {
                  AppCubit.get(context).getWeight();
                },
                child: const Text('Calculate weight'))
          ],
        );
      },
    );
  }
}
