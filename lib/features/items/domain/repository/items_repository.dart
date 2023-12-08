import 'package:assignment_test/core/errors/failure.dart';
import 'package:assignment_test/features/items/domain/entities/item_details_entity.dart';
import 'package:assignment_test/features/items/domain/entities/item_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class ItemsRepository{
  Future<Either<Failure,List<ItemEntity>>> getItems();
  Future<Either<Failure,ItemDetailsEntity>> getItemDetails({required int id});

}