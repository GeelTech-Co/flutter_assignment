import 'package:dio/dio.dart';
import '../helpers/constants.dart';
import '../helpers/local_storage_manager.dart';

class TokenInterceptor extends Interceptor {
  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    sharedToken = await LocalStorageManager.getData('token');
    options.headers['Authorization'] = 'Bearer $sharedToken';
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  Future onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      /*
    refreshToken();
    */
    }
    super.onError(err, handler);
  }
}
