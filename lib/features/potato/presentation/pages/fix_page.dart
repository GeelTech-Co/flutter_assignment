import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/model/person_model.dart';
import '../../../../core/services/services_locator.dart';
import '../../../../core/utils/app_strings.dart';
import '../manager/cubit/potato_cubit.dart';
import '../widget/count_widget.dart';
import '../widget/defult_button.dart';
import '../widget/item_count_widget.dart';

class FixTabPage extends StatelessWidget {
  FixTabPage({Key? key}) : super(key: key);
  Person? person;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ItemCountWidget(),
        const CountWidget(),
        BlocProvider(
          create: (context) => sl<PotatoCubit>(),
          child: BlocConsumer<PotatoCubit, PotatoState>(
            listener: (context, state) {
              // TODO: implement listener
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
        )
      ],
    );
  }
}
