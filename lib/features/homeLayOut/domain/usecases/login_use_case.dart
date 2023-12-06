// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/features/homeLayOut/domain/repositories/login_domain_repo.dart';
import 'package:dartz/dartz.dart';

class LogInUseCase {
  LogInDomainRepo logInDomainRepo;
  LogInUseCase({
    required this.logInDomainRepo,
  });
  Future<Either<Failures, String>> call(String name, String password) =>
      logInDomainRepo.logIn(name, password);
}
