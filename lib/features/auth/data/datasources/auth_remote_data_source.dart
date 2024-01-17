import 'package:assignment_test/core/helpers/api/end_points.dart';
import 'package:assignment_test/core/helpers/api/api_consumer.dart';
import 'package:assignment_test/features/auth/data/models/sign_in_response.dart';
import 'package:assignment_test/features/auth/domain/entities/sing_in_params.dart';

abstract class AuthenticationRemoteDataSource {
  Future<String> signOut();
  Future<SignInResponseModel?> getUserData();
  Future<SignInResponseModel?> signIn(SingInParams params);
}

class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final ApiConsumer apiConsumer;

  AuthenticationRemoteDataSourceImpl(this.apiConsumer);

  @override
  Future<SignInResponseModel?> getUserData() async {
    final res = await apiConsumer.get(APIEndPoints.getUser);
    return res;
  }

  @override
  Future<SignInResponseModel> signIn(SingInParams params) async {
    final res = await apiConsumer.post(
      APIEndPoints.signIn,
      body: {"username": params.email, "password": params.password},
    );
    return res;
  }

  @override
  Future<String> signOut() async {
    final res = await apiConsumer.get(APIEndPoints.signOut);
    return res;
  }
}
