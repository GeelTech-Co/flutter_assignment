import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:assignment_test/features/product/data/models/product.dart';

abstract class ProductLocalDataSource {
  Future<List<ProductModel>> getProducts();
  Future<ProductModel?> getProduct(int id);
}

class ProductLocalDataSourceImpl implements ProductLocalDataSource {
  @override
  Future<List<ProductModel>> getProducts() async {
    final String jsonString =
        await rootBundle.loadString('assets/dummy_data/products.json');
    List<dynamic> jsonData = json.decode(jsonString);
    List<ProductModel> products =
        jsonData.map((json) => ProductModel.fromJson(json)).toList();
    return products;
  }

  @override
  Future<ProductModel?> getProduct(int id) async {
    try {
      final String jsonString =
        await rootBundle.loadString('assets/dummy_data/products.json');
        
    List<dynamic> jsonData = json.decode(jsonString);
    
    
    List<ProductModel> products =
        jsonData.map((json) => ProductModel.fromJson(json)).toList();
      
    return products.firstWhere((element) => element.id == id);
    } catch (e) {
      log(e.toString());
      return null;
    }
    
  }
  
}
