import 'package:assignment_test/features/item/logic/item_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_color.dart';
import '../../../../core/helpers/setup_error_message.dart';

class ItemDetailsWidget extends StatelessWidget {
  const ItemDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ItemBloc>();
    return BlocConsumer<ItemBloc, ItemState>(
      listener: (context, state) {
        if (state is ErrorGetItemProfile) {
          setupErrorMessage(error: state.error, context: context);
        }
      },
      builder: (context, state) {
        if (state is LoadingGetItemProfile) {
          return const Center(
            child: CircularProgressIndicator.adaptive(
              backgroundColor: AppColor.primaryColor,
            ),
          );
        }
        return Scaffold(
          appBar: AppBar(),
          body: Center(
              child: Column(
            children: [
              Image.network(bloc.itemProfile.imageUrl ?? ''),
              Text(bloc.itemProfile.type ?? ''),
              if (bloc.itemProfile.itemsRelated != null &&
                  bloc.itemProfile.itemsRelated?.isNotEmpty == true)
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ListTile(
                    title:
                        Text('${bloc.itemProfile.itemsRelated?[index].name}'),
                    subtitle: Text(
                        '\$${bloc.itemProfile.itemsRelated?[index].price?.toStringAsFixed(2)}'),
                  ),
                  itemCount: bloc.items.length,
                ),
            ],
          )),
        );
      },
    );
  }
}
