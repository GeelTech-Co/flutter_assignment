import 'package:assignment_test/features/product/domain/entities/product.dart';
import 'package:assignment_test/features/product/domain/repositories/product_repo.dart';

class GetProductUsecase {
  final ProductRepository itemsRepository;

  GetProductUsecase(this.itemsRepository);

  Future<Product?> call(int id) async => await itemsRepository.getProduct(id);
}
