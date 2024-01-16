import 'package:assignment_test/data/model/base_request.dart';
import 'package:dio/dio.dart';

mixin BaseApi {
  Options options = Options(
    receiveDataWhenStatusError: true,
    validateStatus: (status) {
      return true;
    },
    receiveTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 20),
  );

  Future<Response> postMethod({
    required BaseClassRequest classRequest,
    required String url,
  }) async {
    try {
      Dio dio = Dio();
      if (classRequest.getToken != null) {
        options.headers = {
          'Authorization': 'Bearer ${classRequest.getToken}',
        };
      }
      var response = await dio.post(
        url,
        data: classRequest.toJson,
        options: options,
      );
      return response;
    } catch (e) {
      throw 'Some error Accurse please try again';
    }
  }

  Future<Response> getMethod({
    String? token,
    Map<String, dynamic>? params,
    required String url,
  }) async {
    try {
      if (token != null) {
        options.headers = {
          'Authorization': 'Bearer $token',
        };
      }
      Dio dio = Dio();
      var response = await dio.get(
        url,
        options: options,
        queryParameters: params,
      );

      return response;
    } catch (e) {
      throw 'Some error Accurse please try again';
    }
  }
}
