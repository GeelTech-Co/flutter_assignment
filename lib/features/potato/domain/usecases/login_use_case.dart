import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/use_case.dart';
import '../entities/user_entite.dart';
import '../repositories/base_potato_repositories.dart';

class LoginUseCase extends BaseUseCase<User, UserData> {
  final BasePotatoRepository baseUserRepository;
  LoginUseCase(this.baseUserRepository);
  @override
  Future<Either<Failure, User>> call(UserData userData) async {
    return await baseUserRepository.login(
        userData: UserData(
            userName: userData.userName!, password: userData.password!));
  }
}

class UserData extends Equatable {
  final String? userName;
  final String? password;

  const UserData({this.userName, this.password});

  @override
  List<Object?> get props => [userName, password];
}
