import 'package:assignment_test/features/items/presentation/bloc/products_cubit.dart';
import 'package:assignment_test/features/items/presentation/bloc/products_state.dart';
import 'package:assignment_test/features/items/presentation/widgets/product_details_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsTab extends StatefulWidget {
  const ProductsTab({Key? key}) : super(key: key);

  @override
  State<ProductsTab> createState() => _ProductsTabState();
}

class _ProductsTabState extends State<ProductsTab> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) => state is ProductErrorState
          ? const Center(
              child: Text('Something went wrong.'),
            )
          : ProductCubit.of(context).products == null || state is ProductLoadingState
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        ProductCubit.of(context).getProducts(context);
                      },
                      child: const Text('Load items'),
                    ),
                  ],
                )
              : ListView(
                  shrinkWrap: true,
                  children: ProductCubit.of(context)
                      .products!
                      .itemsModelData!
                      .map((e) => ListTile(
                            title: Text(
                              e.name.toString(),
                              style: const TextStyle(color: Colors.black),
                            ),
                            subtitle: Text(e.price!.toString()),
                            onTap: () {
                              ProductCubit.of(context).getProductsDetails(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ItemDetailsWidget(),
                                  ));
                            },
                          ))
                      .toList(),
                ),
    );
  }
}
