
import 'package:assignment_test/features/potato/presentation/widget/defult_button.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/services_locator.dart';
import '../../../../core/utils/app_strings.dart';
import '../manager/cubit/potato_cubit.dart';

class CountWeight extends StatelessWidget {
  const CountWeight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PotatoCubit>(),
      child: BlocConsumer<PotatoCubit, PotatoState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          return Column(
            children: [
              Text(
                  '${AppStrings.idealWeight} : ${context.read<PotatoCubit>().weight != null ? context.read<PotatoCubit>().weight!.toStringAsFixed(1) : 0}'),
              DefaultButton(
                name: AppStrings.calculateWeight,
                onPressed: () async {
                  context.read<PotatoCubit>().getIIdealWeight();
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
