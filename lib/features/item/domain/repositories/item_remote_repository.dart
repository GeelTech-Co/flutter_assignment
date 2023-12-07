import 'package:dartz/dartz.dart';

import '../../../../../core/networking/error/failure.dart';
import '../entities/item.dart';

abstract class ItemRemoteRepository {
  Future<Either<Failure, List<Item>>> getItem();
  Future<Either<Failure, ItemWithId>> getItemWithId({required int id});
}
