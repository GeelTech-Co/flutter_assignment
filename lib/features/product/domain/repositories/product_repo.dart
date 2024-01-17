import 'package:assignment_test/features/product/domain/entities/product.dart';

abstract class ProductRepository {
  Future<Product?> getProduct(int id);
  Future<List<Product>?> getProducts();
}
