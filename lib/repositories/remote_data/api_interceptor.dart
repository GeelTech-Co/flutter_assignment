import 'dart:developer';

import 'package:assignment_test/utils/auth_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiInterceptor extends QueuedInterceptor {
  ApiInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    /// This will handle the token, if the user is not logged in, the token will not be sent.
    /// Otherwise it'll be sent in the headers
    bool isTokenReady = AuthSetting.instance.token != null;
    options.headers = {
      if (isTokenReady) 'Authorization': 'Bearer ${AuthSetting.instance.token}'
    };
    options.contentType = Headers.jsonContentType;
    if (kDebugMode) {
      log(options.headers.toString());
      log(options.data.toString());
      log(options.path.toString());
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      log(err.message!);
    }
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      log(response.data.toString());
    }
    super.onResponse(response, handler);
  }
}
