// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:dartz/dartz.dart';

import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/features/homeLayOut/data/datasources/data_source.dart';
import 'package:assignment_test/features/homeLayOut/domain/repositories/get_items_domain_repo.dart';

class GetItemsDataRepo extends GetItemsDomainRepo {
  DataSource dataSource;
  GetItemsDataRepo({
    required this.dataSource,
  });
  @override
  Future<Either<Failures, List<ItemsData>>> getItems() => dataSource.getItems();
}
