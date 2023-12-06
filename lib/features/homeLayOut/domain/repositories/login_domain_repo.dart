import 'package:assignment_test/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class LogInDomainRepo {
  Future<Either<Failures, String>> logIn(String name, String password);
}
