import 'package:assignment_test/app/components.dart';
import 'package:assignment_test/modules/fix/bloc/ideal_weight_cubit/ideal_weight_cubit.dart';
import 'package:assignment_test/modules/fix/bloc/ideal_weight_cubit/ideal_weight_state.dart';
import 'package:assignment_test/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculateIdealWeightWidget extends StatelessWidget {
  final num age;
  final num height;

  const CalculateIdealWeightWidget(
      {super.key, required this.age, required this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocProvider(
            create: (context) => IdealWeightCubit(),
            child: BlocBuilder<IdealWeightCubit, IdealWeightState>(
              builder: (manIdealWeighContext, manIdealWeightState) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: DefaultButton(
                        text: StringsManager.manCalculation,
                        onPressed: () {
                          manIdealWeighContext
                              .read<IdealWeightCubit>()
                              .calculateIdealWeight(age, height, true);
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text('${manIdealWeightState.idealWeight}',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontSize: 20)),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          BlocProvider(
            create: (context) => IdealWeightCubit(),
            child: BlocBuilder<IdealWeightCubit, IdealWeightState>(
              builder: (womanIdealWeighContext, womanIdealWeightState) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: DefaultButton(
                        text: StringsManager.womanCalculation,
                        onPressed: () {
                          womanIdealWeighContext
                              .read<IdealWeightCubit>()
                              .calculateIdealWeight(age, height, false);
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text('${womanIdealWeightState.idealWeight}',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontSize: 20)),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
