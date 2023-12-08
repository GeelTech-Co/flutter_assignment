import 'package:assignment_test/core/errors/failure.dart';
import 'package:assignment_test/core/use_cases/use_case.dart';
import 'package:assignment_test/features/items/domain/entities/item_entity.dart';
import 'package:assignment_test/features/items/domain/repository/items_repository.dart';
import 'package:fpdart/fpdart.dart';

class ItemsUseCase extends UseCase<List<ItemEntity>,void>{
  final ItemsRepository itemsRepository;

  ItemsUseCase({required this.itemsRepository});
  @override
  Future<Either<Failure, List<ItemEntity>>> call([void params]) {
    return itemsRepository.getItems();
  }
}