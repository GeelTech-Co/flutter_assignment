import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:dartz/dartz.dart';

abstract class GetItemsDomainRepo {
  Future<Either<Failures, List<ItemsData>>> getItems();
}
