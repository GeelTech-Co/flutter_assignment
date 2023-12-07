import 'package:assignment_test/config/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/services/services_locator.dart';
import '../../domain/usecases/litem_details_use_case.dart';
import '../manager/cubit/potato_cubit.dart';
import '../widget/item_builder_details.dart';
class LoadItemDetailsWidget extends StatelessWidget {
  const LoadItemDetailsWidget({
    super.key,
    required this.id
  });
  final int id;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: BlocProvider(
      create: (context) => sl<PotatoCubit>()..getItemDetails(parameter: ItemParameter(id:id )),
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
    ));
  }
}