import 'package:assignment_test/repositories/remote_data/api_client.dart';
import 'package:assignment_test/repositories/remote_data/api_interceptor.dart';
import 'package:dio/dio.dart';

class Repository {
  /// To see the headers and the requests logs, make the [_baseUrl] empty
  final String _baseUrl = 'https:/test';

  static final Repository _instance = Repository._internal();

  late final ApiClient _client;

  late Dio _dio;

  static Repository get instance => _instance;

  ApiClient get client => _client;

  factory Repository() {
    return _instance;
  }

  Repository._internal() {
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    _dio.interceptors.add(ApiInterceptor());
    _dio.options.contentType = Headers.jsonContentType;
    _client = ApiClient(_dio);
  }
}
