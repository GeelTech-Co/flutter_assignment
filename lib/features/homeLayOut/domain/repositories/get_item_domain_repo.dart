import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/features/homeLayOut/data/models/item.dart';
import 'package:dartz/dartz.dart';

abstract class GetItemDomainRepo {
  Future<Either<Failures, Item>> getItem(String id);
}
