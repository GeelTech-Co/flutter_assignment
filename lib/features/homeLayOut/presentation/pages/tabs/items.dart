import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:assignment_test/features/homeLayOut/presentation/cubit/home_layout_cubit.dart';
import 'package:assignment_test/features/homeLayOut/presentation/widgets/items_list_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsTab extends StatefulWidget {
  const ItemsTab({Key? key}) : super(key: key);

  @override
  State<ItemsTab> createState() => _ItemsTabState();
}

class _ItemsTabState extends State<ItemsTab> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeLayoutCubit, HomeLayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state is GetItemsSuccess
            ? ItemsListBuilder(itemsList: HomeLayoutCubit.get(context).items)
            : state is LoadingState
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          HomeLayoutCubit.get(context).getItems();
                        },
                        child: const Text(AppStrings.loadItems),
                      )
                    ],
                  );
      },
    );
  }
}
