import 'package:assignment_test/core/utils/values_manger.dart';
import 'package:assignment_test/features/item/presentation/controller/cubit/item_with_id/item_with_id_cubit.dart';
import 'package:assignment_test/features/item/presentation/pages/item_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/theming/styles.dart';
import '../../../domain/entities/item.dart';
import '../../../domain/usecases/item_with_id.dart';

class CartItemView extends StatelessWidget {
  final Item item;

  const CartItemView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: BlocProvider(
        create: (context) =>
            ItemWithIdCubit(itemWithIdUseCase: getIt<ItemWithIdUseCase>()),
        child: GestureDetector(
          onTap: () {
            context.read<ItemWithIdCubit>().getItemWithId(id: item.id);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ItemDetailsWidget()));
          },
          child: Card(
            child: SizedBox(
              width: double.maxFinite,
              height: AppSize.s60,
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p10),
                child: Row(
                  children: [
                    Text(
                      item.name,
                      style: TextStyles.font24BlackBold,
                    ),
                    const Spacer(),
                    Text(
                      "${item.price.toString()}\$",
                      style: TextStyles.font24BlackBold,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
