import 'package:assignment_test/features/auth/domain/repositories/auth_repo.dart';

class SingOutUseCase {
  final AuthenticationRepository authenticationRepository;

  SingOutUseCase(this.authenticationRepository);

  Future<String?> call() async => await authenticationRepository.signOut();
}
