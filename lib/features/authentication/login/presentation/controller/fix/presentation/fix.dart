import 'package:assignment_test/core/utils/strings_manger.dart';
import 'package:assignment_test/features/authentication/login/presentation/controller/fix/presentation/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../fix_cubit.dart';

class FixTab extends StatelessWidget {
  const FixTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const FixCard(),
        const Divider(
          thickness: 5,
          color: Colors.black,
        ),
        BlocBuilder<FixCubit, FixState>(
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
        const Divider(
          thickness: 5,
          color: Colors.black,
        ),
        BlocBuilder<FixCubit, FixState>(
          builder: (context, state) {
            return Column(
              children: [
                Text(
                    '${AppString.idealWeight} : ${context.read<FixCubit>().weight != null ? context.read<FixCubit>().weight.toStringAsFixed(1) : 0}'),
                TextButton(
                  child: const Text(AppString.calculateWeight),
                  onPressed: () async {
                    context.read<FixCubit>().getIIdealWeight();
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
