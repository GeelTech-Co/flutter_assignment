import 'package:assignment_test/config/enum/get_data_status.dart';
import 'package:assignment_test/core/widget/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/item_deatlis_cubit.dart';

class ItemDetailsWidget extends StatelessWidget {
  const ItemDetailsWidget({
    super.key,
    required this.idItem,
  });
  final String idItem;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItemDetailsCubit>(
      create: (contextB) => ItemDetailsCubit(
        idItem: idItem,
        context: context,
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: BlocBuilder<ItemDetailsCubit, ItemDetailsState>(
            buildWhen: (previous, current) =>
                previous.getDataStatus != current.getDataStatus,
            builder: (context, state) {
              switch (state.getDataStatus) {
                case GetDataStatus.loading:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case GetDataStatus.successful:
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(state.itemDetails!.imageUrl),
                      Text(state.itemDetails!.type),
                    ],
                  );
                case GetDataStatus.field:
                  return ErrorOnGetDataWidget(
                    errorMassage: state.errorMassage,
                    onRefresh: () => context.read<ItemDetailsCubit>().getItem(),
                  );
                default:
                  return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
