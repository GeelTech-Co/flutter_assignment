import 'dart:convert';

import 'package:assignment_test/core/config/app_env.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import '../app_shared_preferences/app_shared_preferences.dart';
import '../config/endpoint_route.dart';

class BaseAppClient {
  Future<Dio> get dio async {
    String? token = await AppSharedPreferences.getString("token");

    return Dio(BaseOptions(
      baseUrl: EndPoint.baseAppUrl,
      connectTimeout: const Duration(seconds: 45),
      receiveTimeout: const Duration(seconds: 45),
      headers: {
        'api': '1.0.0',
        'X-Requested-With': "XMLHttpRequest",
        if (token != null) 'Authorization': 'Bearer ${token }',
      },
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
    ));
  }

  ///POST Request
  Future<void> post(
    String path, {
    String type = '',
    required dynamic body,
    required Function(dynamic response, int? statusCode) onSuccess,
    required Function(dynamic response, int? statusCode) onFailure,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    if (AppEnv.appEnv == AppEnvEnum.dev) {
      await getResponse(type)
          .then((value) => onSuccess(value, 200))
          .catchError((onError) {
        onFailure(onError, 400);
      });
    } else {
      try {
        Response<dynamic>? response;
        Dio dioValue = await dio;
        response = await dioValue.post(
          path,
          queryParameters: queryParameters,
          data: body,
        );
        final int? statusCode = response.statusCode;
        if (statusCode != null && (statusCode < 200 || statusCode >= 400)) {
          onFailure(
            response.data,
            statusCode,
          );
        } else {
          onSuccess(response.data, statusCode);
        }
      } on DioError catch (e) {
        onFailure(e.response?.data, e.response?.statusCode);
      } on Exception catch (e) {
        onFailure(e.toString(), 500);
      }
    }
  }

  /// GET Request
  Future<void> get(
    String path, {
    String type = '',
    Map<String, dynamic>? queryParameters,
    bool isRequiredToken = true,
    required Function(dynamic, int? statusCode) onSuccess,
    required Function(dynamic error, int? statusCode) onFailure,
    Options? options,
  }) async {
    if (AppEnv.appEnv == AppEnvEnum.dev) {
      await getResponse(type)
          .then((value) => onSuccess(value, 200))
          .catchError((onError) {
        onFailure(onError, 400);
      });
    } else {
      try {
        Response<dynamic>? response;
        Dio dioValue = await dio;
        response = await dioValue.get(path, queryParameters: queryParameters);

        final int? statusCode = response.statusCode;
        if (statusCode != null && (statusCode < 200 || statusCode >= 400)) {
          onFailure(
            response.statusMessage ?? "",
            statusCode,
          );
        } else {
          onSuccess(response.data, statusCode);
        }
      } on DioError catch (e) {
        onFailure(e.response, e.response?.statusCode);
      } on Exception catch (e) {
        onFailure(e.toString(), 500);
      }
    }
  }

  Future<Map<String, dynamic>> getResponse(String path) async {
    String jsonPath = '';
    if (path == EndPoint.login) {
      jsonPath = 'assets/mock_body/login.json';
    } else if (path == EndPoint.getUser) {
      jsonPath = 'assets/mock_body/get_user.json';
    } else if (path == EndPoint.logout) {
      jsonPath = 'assets/mock_body/logout.json';
    } else if (path == EndPoint.items) {
      jsonPath = 'assets/mock_body/items.json';
    } else if (path == EndPoint.item) {
      jsonPath = 'assets/mock_body/item.json';
    }
    final String unDecodedConfigs =
        await rootBundle.loadString(jsonPath).catchError((dynamic e) {});
    final Map<String, dynamic> jsonConfigs = jsonDecode(unDecodedConfigs);
    return jsonConfigs;
  }
}
