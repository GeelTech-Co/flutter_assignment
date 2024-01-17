import 'package:assignment_test/features/auth/domain/repositories/auth_repo.dart';
import 'package:assignment_test/features/auth/domain/entities/sign_in_response.dart';

class GetUserDataUseCase {
  final AuthenticationRepository authenticationRepository;

  GetUserDataUseCase(this.authenticationRepository);

  Future<SignInResponse?> call() async =>
      await authenticationRepository.getUserData();
}
