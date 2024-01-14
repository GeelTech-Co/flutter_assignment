import 'package:assignment_test/core/helpers/app_color.dart';
import 'package:assignment_test/core/router/routes.dart';
import 'package:assignment_test/features/item/logic/item_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../core/helpers/setup_error_message.dart';

class ItemsTab extends StatelessWidget {
  const ItemsTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ItemBloc>();
    return BlocConsumer<ItemBloc, ItemState>(
      listener: (context, state) {
        if (state is ErrorGetItems) {
          setupErrorMessage(error: state.error, context: context);
        }
      },
      builder: (context, state) {
        if (state is LoadingGetItems) {
          return const Center(
            child: CircularProgressIndicator.adaptive(
              backgroundColor: AppColor.primaryColor,
            ),
          );
        }
        if(state is SuccessGetItems || bloc.items.isNotEmpty) {
          return ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                GoRouter.of(context).push(Routes.itemDetailsScreen);
                bloc.add(GetItemProfile(id: bloc.items[index].id!));
              },
              child: ListTile(
                title: Text('${bloc.items[index].name}'),
                subtitle: Text(
                    '\$${bloc.items[index].price?.toStringAsFixed(2)}'),
              ),
            ),
            itemCount: bloc.items.length,
          );
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              ElevatedButton(
                onPressed: () async {
                  bloc.add(const GetItems());
                },
                child: const Text('Load items'),
              )
          ],
        );
      },
    );
  }
}

