import 'package:assignment_test/config/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/services/services_locator.dart';
import '../manager/cubit/potato_cubit.dart';
import '../widget/item_builder_details.dart';

class ItemDetailsPage extends StatelessWidget {
  const ItemDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: BlocProvider(
        create: (context) => sl<PotatoCubit>()..getItemDetails(),
        child: BlocConsumer<PotatoCubit, PotatoState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = context.read<PotatoCubit>();
            return state is ItemDetailsLoadingState
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    children: [
                      Image.network(context
                          .read<PotatoCubit>()
                          .itemDetails!
                          .body
                          .imageUrl),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Type : ${context.read<PotatoCubit>().itemDetails!.body.type}",
                        style: AppTextStyle.font23black500,
                      ),
                      ItemBuilderDetails(
                        cubit: cubit,
                      ),
                    ],
                  );
          },
        ),
      )),
    );
  }
}
