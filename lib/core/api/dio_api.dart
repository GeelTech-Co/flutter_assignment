import 'dart:io';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../cache_helper.dart';
import 'exception_error.dart';

class DioHelper {
  static late Dio dio;

  static void init(String baseUrl) {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
      ),
    )..interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    ]);
  }

  static Map<String, dynamic> headers() {
    var token = CacheHelper.get(key: 'token');
    return {'Authorization': token};
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? queryParameters,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await dio.get(
        url,
        options: Options(headers: headers()),
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioError catch (error) {
      if (error.error is SocketException) {
        throw const ApiException('ConnectionError');
      } else {
        rethrow;
      }
    } catch (_) {
      throw const ApiException('ConnectionError');
    }
  }

  static Future<Response> postData({
    required String url,
    required dynamic data,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await dio.post(
        url,
        data: data,
        options: Options(headers: headers()),
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioError catch (error) {
      print("Error Dio");
      rethrow;
    }
  }
}
