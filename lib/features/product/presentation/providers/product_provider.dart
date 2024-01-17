import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:assignment_test/core/enums/enum_state.dart';
import 'package:assignment_test/features/product/domain/entities/product.dart';
import 'package:assignment_test/features/product/domain/usecases/get_product_usecase.dart';
import 'package:assignment_test/features/product/domain/usecases/get_products_usecase.dart';

class ProductProvider extends ChangeNotifier {
  final GetProductUsecase getProductUsecase;
  final GetProductsUsecase getProductsUsecase;

  ProductProvider({
    required this.getProductUsecase,
    required this.getProductsUsecase,
  });
  States getProductState = States.initial;
  Product? product;
  Future<Product?> getProduct(int id) async {
    getProductState = States.loading;
    notifyListeners();
    try {
      await Future.delayed(const Duration(seconds: 5));
      final res = await getProductUsecase.call(id);
      product = res;

      getProductState = States.success;
      notifyListeners();
      return res;
    } catch (e) {
      getProductState = States.error;
      notifyListeners();
      log(e.toString());
      return null;
    }
  }

  States getProductsState = States.initial;
  List<Product> products = [];
  Future<void> getProducts() async {
    getProductsState = States.loading;

    notifyListeners();
    try {
      await Future.delayed(const Duration(seconds: 5));
      final res = await getProductsUsecase.call();
      products = res!;
      getProductsState = States.success;
      notifyListeners();
    } catch (e) {
      getProductsState = States.error;
      notifyListeners();
      log(e.toString());
    }
    // final res = await getProductsUsecase.call();
  }
}
