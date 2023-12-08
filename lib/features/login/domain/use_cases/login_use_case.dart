import 'package:assignment_test/features/login/data/models/login_attributes.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../repository/repository.dart';

class LoginUseCase extends UseCase<void,LoginAttributes>{
  final LoginRepository loginRepository;

  LoginUseCase(this.loginRepository);

  @override
  Future<Either<Failure, void>> call([LoginAttributes? params]) {
    return loginRepository.login(loginAttributes: params!);
  }


}