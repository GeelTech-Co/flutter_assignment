import 'package:assignment_test/features/auth/domain/entities/sing_in_params.dart';
import 'package:assignment_test/features/auth/domain/entities/sign_in_response.dart';

abstract class AuthenticationRepository {
  Future<String?> signOut();
  Future<SignInResponse?> getUserData();
  Future<SignInResponse?> signIn(SingInParams params);
}
