import 'package:assignment_test/core/errors/failure.dart';
import 'package:assignment_test/core/use_cases/use_case.dart';
import 'package:assignment_test/features/items/domain/entities/item_details_entity.dart';
import 'package:assignment_test/features/items/domain/repository/items_repository.dart';
import 'package:fpdart/fpdart.dart';

class ItemDetailsUseCase extends UseCase<ItemDetailsEntity,int>{
  final ItemsRepository itemsRepository;

  ItemDetailsUseCase({required this.itemsRepository});
  @override
  Future<Either<Failure, ItemDetailsEntity>> call([int? params]) {
    return itemsRepository.getItemDetails(id: params!);
  }
}