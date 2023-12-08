import 'package:assignment_test/features/login/data/models/login_attributes.dart';
import 'package:assignment_test/features/login/data/models/login_response.dart';

import '../../../../core/utils/api_services.dart';

abstract class LoginRemoteDataSource{
  Future<LoginResponse> login({required LoginAttributes loginAttributes});
}

class LoginRemoteDataSourceImp extends LoginRemoteDataSource {
  final ApiServices apiServices;

  LoginRemoteDataSourceImp(this.apiServices);

  final String loginEndPoint = '/login';

  @override
  Future<LoginResponse> login(
      {required LoginAttributes loginAttributes}) async {
    final result = await apiServices.post(
        endPoint: loginEndPoint, data: loginAttributes.toJson());
    return LoginResponse.fromJson(result);
  }
}