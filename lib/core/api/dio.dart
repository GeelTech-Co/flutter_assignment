import 'dart:io';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../cache_helper.dart';
import 'exception.dart';

class DioHelper {
  static late Dio dio;

  static init(String baseUrl) {
    dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
    ));
    dio.interceptors.addAll([
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
    return {
      'Authorization': token,
    };
  }

  //This Function that's Used To Get Data to API based on URL(End Points).

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
    } on DioException catch (e) {
      if (e.error is SocketException) {
        throw const ApiException('noInternet');
      } else {
        throw DioException(
          requestOptions: e.requestOptions,
          message: e.message,
          response: e.response,
        );
      }
    } catch (e) {
      throw const ApiException('noInternet');
    }
  }

  //This Function that's Used To Post Data to API based on URL(End Points) and Headers.
  static Future<Response> postData({
    required String url,
    required var data,
    //bool files = false,
    String? token,
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
    } on DioException catch (exc, _) {
      print("Dio Error");

      throw DioException(
        requestOptions: exc.requestOptions,
        message: exc.message,
        response: exc.response,
      );
    }
  }
}
