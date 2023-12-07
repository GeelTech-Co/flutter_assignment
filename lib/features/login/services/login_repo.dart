// login_repo.dart
import 'package:dio/dio.dart';

class LoginRepo {
  final Dio _dio = Dio();

  Future<void> login(String username, String password) async {
    try {
      // Replace the URL with your actual login endpoint
      final response = await _dio.post(
        'https://potatotech.mocklab.io.potato-co.com/api/login',
        data: {
          'username': username,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        // Login successful
        return;
      } else {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
    } on DioException {
      rethrow;
    }
  }
}
