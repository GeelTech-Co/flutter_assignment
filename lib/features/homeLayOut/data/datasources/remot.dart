import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/core/network/api_services.dart';
import 'package:assignment_test/features/homeLayOut/data/datasources/data_source.dart';
import 'package:assignment_test/features/homeLayOut/data/models/item.dart';
import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:dartz/dartz.dart';

class RemoteDto extends DataSource {
  @override
  Future<Either<Failures, String>> logIn(String name, String password) async =>
      ApiService.logIn(name, password);

  @override
  Future<Either<Failures, List<ItemsData>>> getItems() async =>
      ApiService.getItems();

  @override
  Future<Either<Failures, Item>> getItem(int id) => ApiService.getItem(id);
}
