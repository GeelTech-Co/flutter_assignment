import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:assignment_test/core/enums/enum_state.dart';
import 'package:assignment_test/features/product/presentation/providers/product_provider.dart';
import 'package:assignment_test/features/product/presentation/widgets/product_item.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Provider.of<ProductProvider>(context, listen: false).getProducts();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProductProvider>(
        builder: (context, value, child) {
          if (value.getProductsState == States.loading) {
            return const CircularProgressIndicator();
          } else if (value.getProductsState == States.error) {
            return const Text("Error Data");
          } else if (value.getProductsState == States.success) {
            return ListView.separated(
              itemCount: value.products.length,
              padding: const EdgeInsets.all(16),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemBuilder: (context, index) => ProductItem(
                product: value.products[index],
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
