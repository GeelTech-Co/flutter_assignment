// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assignment_test/features/homeLayOut/data/models/item.dart';
import 'package:assignment_test/features/homeLayOut/domain/repositories/get_item_domain_repo.dart';
import 'package:dartz/dartz.dart';

import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/features/homeLayOut/data/datasources/data_source.dart';

class GetItemDataRepo extends GetItemDomainRepo {
  DataSource dataSource;
  GetItemDataRepo({
    required this.dataSource,
  });
  @override
  Future<Either<Failures, Item>> getItem(String id) => dataSource.getItem(id);
}
