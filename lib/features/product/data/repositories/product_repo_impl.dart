import 'dart:developer';
import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:assignment_test/features/product/data/models/product.dart';
import 'package:assignment_test/features/product/domain/repositories/product_repo.dart';
import 'package:assignment_test/features/product/data/datasources/product_local_data_source.dart';
import 'package:assignment_test/features/product/data/datasources/product_remote_data_source.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductLocalDataSource productLocalDataSource;
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepositoryImpl({
    required this.productLocalDataSource,
    required this.productRemoteDataSource,
  });

  @override
  Future<ProductModel?> getProduct(int id) async {
    if (getDataFromAPI) {
      try {
        final res = await productRemoteDataSource.getProduct(id);
        return res;
      } catch (e) {
        log(e.toString());
        return null;
      }
    } else {
      try {
        final res = await productLocalDataSource.getProduct(id);
        return res;
      } catch (e) {
        log(e.toString());
        return null;
      }
    }
  }

  @override
  Future<List<ProductModel>> getProducts() async {
    if (getDataFromAPI) {
      try {
        final res = await productRemoteDataSource.getProducts();
        return res;
      } catch (e) {
        log(e.toString());
        return [];
      }
    } else {
      try {
        final res = await productLocalDataSource.getProducts();
        return res;
      } catch (e) {
        log(e.toString());
        return [];
      }
    }
  }
}
