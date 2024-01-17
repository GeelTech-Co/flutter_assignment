import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:assignment_test/core/helpers/api/api_consumer.dart';
import 'package:assignment_test/features/product/data/models/product.dart';

abstract class ProductRemoteDataSource {
  Future<ProductModel> getProduct(int id);
  Future<List<ProductModel>> getProducts();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final ApiConsumer apiConsumer;

  ProductRemoteDataSourceImpl(this.apiConsumer);

  @override
  Future<ProductModel> getProduct(int id) async {
    final String jsonString =
        await rootBundle.loadString('assets/dummy_data/products.json');
    List<dynamic> jsonData = json.decode(jsonString);
    List<ProductModel> product =
        jsonData.map((json) => ProductModel.fromJson(json)).toList();
    return product.firstWhere((element) => element.id == id);
  }

  @override
  Future<List<ProductModel>> getProducts() async {
    final String jsonString =
        await rootBundle.loadString('assets/dummy_data/products.json');
    List<dynamic> jsonData = json.decode(jsonString);
    List<ProductModel> products =
        jsonData.map((json) => ProductModel.fromJson(json)).toList();
    return products;
  }
}
