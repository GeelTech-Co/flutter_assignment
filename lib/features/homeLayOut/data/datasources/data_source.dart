import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/features/homeLayOut/data/models/item.dart';
import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:dartz/dartz.dart';

abstract class DataSource {
  Future<Either<Failures, String>> logIn(String name, String password);
  Future<Either<Failures, List<ItemsData>>> getItems();
  Future<Either<Failures, Item>> getItem(int id);
}
