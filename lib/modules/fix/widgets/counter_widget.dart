import 'package:assignment_test/modules/fix/bloc/counter_cubit/counter_cubit.dart';
import 'package:assignment_test/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Container(
        height: 65,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderRadius.circular(10)),
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Row(
              children: [
                IconButton(
                    onPressed: () {
                      context.read<CounterCubit>().increment();
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 14,
                      color: ColorsManager.blackBg,
                    )),
                Text(
                  '$state',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: ColorsManager.blackBg),
                ),
                IconButton(
                    onPressed: () {
                      context.read<CounterCubit>().decrement();
                    },
                    icon: const Icon(
                      Icons.remove,
                      size: 14,
                      color: ColorsManager.blackBg,
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
