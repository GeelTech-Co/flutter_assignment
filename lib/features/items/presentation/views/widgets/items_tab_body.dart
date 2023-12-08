import 'package:assignment_test/features/items/presentation/controllers/get_items_cubit/get_items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'items_list_view.dart';


class ItemsTabBody extends StatelessWidget {
  const ItemsTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<GetItemsCubit, GetItemsState>(
          builder: (BuildContext context, state) {
            if (state is GetItemsSuccess) {
              return ItemsListView(itemList: state.list,);
            }
            else if (state is GetItemsFailure) {
              return Text(state.message);
            } else {
              return const CircularProgressIndicator();
            }
          },
        )
      ],
    );
  }
}
