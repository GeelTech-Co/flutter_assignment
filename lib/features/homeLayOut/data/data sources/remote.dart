// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/core/network/api_services.dart';
import 'package:assignment_test/features/homeLayOut/data/data%20sources/data_source.dart';
import 'package:assignment_test/features/homeLayOut/data/models/item.dart';
import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';

class RemoteDto extends DataSource {
  late ApiService apiService;
  RemoteDto() {
    apiService = ApiService();
  }
  @override
  Future<Either<Failures, String>> logIn(String name, String password) async =>
      apiService.logIn(name, password);

  @override
  Future<Either<Failures, List<ItemsData>>> getItems() async =>
      apiService.getItems();

  @override
  Future<Either<Failures, Item>> getItem(int id) => apiService.getItem(id);
}
