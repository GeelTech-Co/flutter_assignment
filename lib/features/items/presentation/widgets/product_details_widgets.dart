import 'package:assignment_test/features/items/presentation/bloc/products_cubit.dart';
import 'package:assignment_test/features/items/presentation/bloc/products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemDetailsWidget extends StatefulWidget {
  const ItemDetailsWidget({Key? key}) : super(key: key);

  @override
  State<ItemDetailsWidget> createState() => _ItemDetailsWidgetState();
}

class _ItemDetailsWidgetState extends State<ItemDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit()..getProductsDetails(context),
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: ProductCubit.of(context).itemDetails != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(radius: 25, backgroundImage: NetworkImage(ProductCubit.of(context).itemDetails!.imageUrl ?? '')),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            ProductCubit.of(context).itemDetails!.type ?? '',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const Text(
                        'Related',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      ListView(
                        shrinkWrap: true,
                        children: ProductCubit.of(context)
                            .itemDetails!
                            .related!
                            .map((e) => ListTile(
                                  title: Text('Name : ${e.name!.toString()}'),
                                  subtitle: Text('Price : ${e.price!.toString()}'),
                                ))
                            .toList(),
                      )
                    ],
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          );
        },
      ),
    );
  }
}
