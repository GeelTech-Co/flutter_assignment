import 'package:dio/dio.dart';

import 'constants.dart';

class ApiServices {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: AppConstants.baseUrl,
    headers: {"Accept": "json"},
  ));

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final result = await _dio.get(endPoint);
    return result.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endPoint, required Map<String, dynamic> data}) async {
    final result = await _dio.post(endPoint, data: data);
    return result.data;
  }
}
