import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/base_use_case/base_use_case.dart';
import '../../../../../core/networking/app_service_client/requests.dart';
import '../../../../../core/networking/error/failure.dart';
import '../entities/authentication.dart';
import '../repositories/login_remote_repository.dart';

class LoginUseCase implements BaseUseCase<Authentication, LoginUseCaseInput> {
  final AuthenticationRemoteRepository authenticationRemoteRepository;

  const LoginUseCase({required this.authenticationRemoteRepository});

  @override
  Future<Either<Failure, Authentication>> call(
      LoginUseCaseInput parameter) async {
    return await authenticationRemoteRepository.login(
        LoginRequests(email: parameter.email, password: parameter.password));
  }
}

class LoginUseCaseInput extends Equatable {
  final String email;
  final String password;

  const LoginUseCaseInput({required this.email, required this.password});

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}
