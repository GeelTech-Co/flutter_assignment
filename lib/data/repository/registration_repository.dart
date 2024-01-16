import 'package:assignment_test/config/constant/api_end_point.dart';
import 'package:assignment_test/data/api/api_methods.dart';
import 'package:assignment_test/data/helper/api_configration.dart';
import 'package:assignment_test/data/model/base_request.dart';
import 'package:assignment_test/data/model/result_api.dart';
import 'package:dio/dio.dart';

class RegistrationRepository with BaseApi, ApiConfiguration {
  Future<ResultApi> login({
    required BaseClassRequest baseClassRequest,
  }) async =>
      await baseRequest(
        method: () async {
          Response response = await postMethod(
              classRequest: baseClassRequest, url: ApiEndPoint.login);
          if (response.statusCode == 200) {
            Map<String, dynamic> result = response.data['data'];
            Map<String, dynamic> dataUser = result['user'];
            String token = result['token'];
            String name = dataUser['name'];
            return ResultApi<(String, String)>(
                isDone: true, massage: (token, name));
          }
          return ResultApi<String>(
              isDone: false, massage: 'some error accrues');
        },
      );
  Future<ResultApi> getUser({
    required String token,
  }) async =>
      await baseRequest(
        method: () async {
          Response response =
              await getMethod(token: token, url: ApiEndPoint.getUser);
          if (response.statusCode == 200) {
            Map<String, dynamic> result = response.data['data'];
            Map<String, dynamic> dataUser = result['user'];
            String userName = dataUser['name'];
            return ResultApi<String>(isDone: true, massage: userName);
          }
          return ResultApi<String>(
              isDone: false, massage: 'some error accrues');
        },
      );
  Future<ResultApi> logOut({
    required String token,
  }) async =>
      await baseRequest(
        method: () async {
          Response response =
              await getMethod(token: token, url: ApiEndPoint.logout);
          if (response.statusCode == 200) {
            return ResultApi(isDone: true, massage: 'done');
          }
          return ResultApi<String>(
              isDone: false, massage: 'some error accrues');
        },
      );
}
