import 'package:assignment_test/data/modal/user_model.dart';

import '../../core/api/dio_api.dart';
import '../../core/api/api_end_point.dart';
import '../../core/api/exception_error.dart';
import '../../core/cache_helper.dart';

abstract class AuthRepo {
  Future<String> login({
    required String? username,
    required String password,
  });

  Future<UserModel> getUser();

  Future<bool> logout();
}

class AuthRepoImpl implements AuthRepo {
  @override
  Future<UserModel> getUser() async {
    // TODO: implement getUser
    try {
      final response = await DioHelper.getData(url: EndPoints.getUser);
      UserModel user = UserModel.fromJson(response.data);
      return user;
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  @override
  Future<String> login(
      {required String? username, required String password}) async {
    try {
      final response = await DioHelper.getData(url: EndPoints.login);
      String token = response.data['token'];
      // await CacheHelper.put(key: "token", value: token);
      return response.data['message'];
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  @override
  Future<bool> logout() async {
    try {
      await DioHelper.getData(url: EndPoints.logout);
      //  UserModel user = UserModel.fromJson(response.data);
      return true;
    } catch (e) {
      throw ApiException(e.toString());
    }
  }
}