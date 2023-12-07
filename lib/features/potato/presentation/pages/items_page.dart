import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:assignment_test/features/potato/presentation/widget/defult_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/services/services_locator.dart';
import '../manager/cubit/potato_cubit.dart';
import '../widget/item_builder.dart';

class ItemsTabPage extends StatelessWidget {
  const ItemsTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocProvider(
          create: (context) => sl<PotatoCubit>(),
          child: BlocConsumer<PotatoCubit, PotatoState>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = context.read<PotatoCubit>();
              return Column(
                children: [
                  if (state is SuccessListItemLoadingState)
                    ItemBuilder(
                      cubit: cubit,
                    ),
                  state is ListItemLoadingState
                      ? const Center(child: CircularProgressIndicator())
                      : Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 50.w),
                        child: DefaultButton(
                            onPressed: () {
                              cubit.getListItems();
                            },
                            name: AppStrings.loadItems),
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

