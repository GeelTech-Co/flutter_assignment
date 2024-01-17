import 'package:assignment_test/features/auth/domain/repositories/auth_repo.dart';
import 'package:assignment_test/features/auth/domain/entities/sing_in_params.dart';
import 'package:assignment_test/features/auth/domain/entities/sign_in_response.dart';

class SingInUseCase {
  final AuthenticationRepository authenticationRepository;

  SingInUseCase(this.authenticationRepository);

  Future<SignInResponse?> call(SingInParams params) async =>
      await authenticationRepository.signIn(params);
}
