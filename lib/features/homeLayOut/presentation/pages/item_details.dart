// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:assignment_test/features/homeLayOut/presentation/cubit/home_layout_cubit.dart';
import 'package:assignment_test/features/homeLayOut/presentation/widgets/items_list_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemDetails extends StatelessWidget {
  final int id;
  const ItemDetails({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLayoutCubit()..getItemDetails(id),
      child: BlocConsumer<HomeLayoutCubit, HomeLayoutState>(
        builder: (context, state) {
          return Scaffold(
              body: SafeArea(
                  child: state is LoadingState
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : state is GetItemDetailsSuccess
                          ? Column(
                              children: [
                                Image.network(
                                  HomeLayoutCubit.get(context)
                                      .itemDetails!
                                      .imageUrl!,
                                  fit: BoxFit.contain,
                                  height: 300,
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 15),
                                    child: Text(
                                      HomeLayoutCubit.get(context)
                                              .itemDetails!
                                              .type ??
                                          '',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Expanded(
                                  child: ItemsListBuilder(
                                      itemsList: HomeLayoutCubit.get(context)
                                              .itemDetails!
                                              .related ??
                                          []),
                                )
                              ],
                            )
                          : Center(
                              child: Column(
                                children: [
                                  const Text(
                                    AppStrings.tryAgainLater,
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        HomeLayoutCubit.get(context)
                                            .getItemDetails(id);
                                      },
                                      child: const Text('refresh')),
                                ],
                              ),
                            )));
        },
        listener: (context, state) {},
      ),
    );
  }
}
