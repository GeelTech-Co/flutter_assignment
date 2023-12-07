import 'package:assignment_test/core/networking/app_service_client/requests.dart';

import '../../../../../core/networking/app_service_client/app_service_client.dart';
import '../model/authentication_model.dart';

abstract class AuthenticationRemoteDatabase {
  Future<AuthenticationResponse> login(LoginRequests loginRequests);
}

class AuthenticationRemoteDatabaseImpl implements AuthenticationRemoteDatabase {
  final AppServiceClient appServiceClient;

  const AuthenticationRemoteDatabaseImpl({required this.appServiceClient});
  @override
  Future<AuthenticationResponse> login(LoginRequests loginRequests) async {
    return await appServiceClient.login(
        loginRequests.email, loginRequests.password);
  }
}
