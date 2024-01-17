import 'package:assignment_test/features/product/domain/entities/product.dart';
import 'package:assignment_test/features/product/domain/repositories/product_repo.dart';

class GetProductsUsecase {
  final ProductRepository productRepository;

  GetProductsUsecase(this.productRepository);

  Future<List<Product>?> call() async => await productRepository.getProducts();
}
