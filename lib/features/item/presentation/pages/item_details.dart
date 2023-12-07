import 'package:assignment_test/core/utils/strings_manger.dart';
import 'package:assignment_test/core/widget/custom_error_widget.dart';
import 'package:assignment_test/core/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/cubit/item_with_id/item_with_id_cubit.dart';

class ItemDetailsWidget extends StatelessWidget {
  const ItemDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.itemsDetails),
      ),
      body: Center(child: BlocBuilder<ItemWithIdCubit, ItemWithIdState>(
        builder: (context, state) {
          if (state is ItemWithIdLoaded) {
            return Column(
              children: [
                Image.network(state.itemWithId.imageUrl),
                Text(state.itemWithId.type),
              ],
            );
          } else if (state is ItemWithIdError) {
            return CustomErrorWidget(errMessage: state.message);
          } else {
            return const CustomLoadingIndicator();
          }
        },
      )),
    );
  }
}
