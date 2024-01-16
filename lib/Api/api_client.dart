import 'package:dio/dio.dart';

import '../Utils/constant.dart';

class ApiClient {

  static Dio getDio() {
    BaseOptions options = BaseOptions(
        followRedirects: false,
        baseUrl: baseUrl,
        responseType: ResponseType.plain,
        connectTimeout: const Duration(milliseconds: 30000),
        headers: {
          "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9",
        });

    Dio dio = Dio(options);

    return dio;
  }

}
