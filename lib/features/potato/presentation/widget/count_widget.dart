import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/services/services_locator.dart';
import '../../../../core/utils/app_strings.dart';
import '../manager/cubit/potato_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PotatoCubit>(),
      child: BlocConsumer<PotatoCubit, PotatoState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(
                width: 100.h,
                height: 100.h,
                child: Center(
                    child: Text(
                  '${AppStrings.counter}: ${context.read<PotatoCubit>().counter.toString()}',
                )),
              ),
              ElevatedButton(
                onPressed: () async {
                  context.read<PotatoCubit>().increaseCounter();
                },
                child: Text(AppStrings.increaseCounter),
              ),
              const Divider(
                thickness: 5,
                color: Colors.black,
              ),
            ],
          );
        },
      ),
    );
  }
}
