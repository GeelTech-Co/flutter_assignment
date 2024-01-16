import 'package:assignment_test/config/enum/get_data_status.dart';
import 'package:assignment_test/config/route/app_routes.dart';
import 'package:assignment_test/core/widget/error_widget.dart';
import 'package:assignment_test/data/model/item_general.dart';
import 'package:assignment_test/feature/items/bloc/items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
part 'widget/items_view.dart';
part 'widget/loading_item.dart';

class ItemsTab extends StatelessWidget {
  const ItemsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItemsCubit>(
      create: (contextB) => ItemsCubit(
        context: context,
      ),
      child: BlocBuilder<ItemsCubit, ItemsState>(
        buildWhen: (previous, current) =>
            previous.getDataStatus != current.getDataStatus,
        builder: (context, state) {
          switch (state.getDataStatus) {
            case GetDataStatus.loading:
              return const _LoadingItem();
            case GetDataStatus.field:
              return ErrorOnGetDataWidget(
                errorMassage: state.errorMassage,
                onRefresh: () => context.read<ItemsCubit>().getItems(),
              );

            case GetDataStatus.successful:
              return _ItemsView(
                items: state.items,
              );

            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
