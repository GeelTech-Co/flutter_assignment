import 'package:assignment_test/core/utils/values_manger.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theming/styles.dart';
import '../../../domain/entities/item.dart';

class CartItemView extends StatelessWidget {
  final Item item;
  const CartItemView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
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
    );
  }
}
