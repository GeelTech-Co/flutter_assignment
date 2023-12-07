// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/features/homeLayOut/data/data%20sources/data_source.dart';
import 'package:assignment_test/features/homeLayOut/domain/repositories/login_domain_repo.dart';

class LogInDataRepo extends LogInDomainRepo {
  DataSource dataSource;
  LogInDataRepo({
    required this.dataSource,
  });
  @override
  Future<Either<Failures, String>> logIn(String name, String password) =>
      dataSource.logIn(name, password);
}
