import 'package:assignment_test/features/authorization/data/models/user_model.dart';

import '../../../../core/app_shared_preferences/app_shared_preferences.dart';
import '../../../../core/base_app_client/base_app_client.dart';
import '../../../../core/config/endpoint_route.dart';

abstract class UserDataSource {
  Future<UserDataModel?> login(
      {required String userName, required String password});

  Future<UserDataModel?> getUser({required int id});

  Future<void> logout();
}

class UserDataSourceImpl implements UserDataSource {
  final BaseAppClient baseAppClient;

  UserDataSourceImpl({required this.baseAppClient});

  @override
  Future<UserDataModel?> getUser({required int id}) async {
    UserDataModel? user;
    await baseAppClient.get('${EndPoint.getUser}?id=$id',
        type: EndPoint.getUser, onSuccess: (data, int? statusCode) {
      Map<String, dynamic> dataMap = data['data'] as Map<String, dynamic>;
      Map<String, dynamic> userMap = dataMap['user'] as Map<String, dynamic>;
      user = UserDataModel.fromJson(userMap);
    }, onFailure: (dynamic error, int? statusCode) {});
    return user;
  }

  @override
  Future<UserDataModel?> login(
      {required String userName, required String password}) async {
    UserDataModel? user;
    await baseAppClient.post(EndPoint.login,
        type: EndPoint.login,
        body: {"username": userName, "password": password},
        onSuccess: (data, int? statusCode) async {
      Map<String, dynamic> dataMap = data['data'] as Map<String, dynamic>;
      Map<String, dynamic> userMap = dataMap['user'] as Map<String, dynamic>;
      await AppSharedPreferences.setInt("id", userMap['id']);
      await AppSharedPreferences.setString("token", dataMap['token']);
      user = UserDataModel.fromJson(userMap);
    }, onFailure: (dynamic error, int? statusCode) {});
    return user;
  }

  @override
  Future<void> logout() async {
    await baseAppClient.get(EndPoint.logout, type: EndPoint.logout,
        onSuccess: (data, int? statusCode) async {
      await AppSharedPreferences.remove("id");
      await AppSharedPreferences.remove("token");
    }, onFailure: (dynamic error, int? statusCode) {});
  }
}
