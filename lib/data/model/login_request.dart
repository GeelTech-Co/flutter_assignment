import 'package:assignment_test/data/model/base_request.dart';

class LoginRequest extends BaseClassRequest {
  final String userName;
  final String password;
  LoginRequest({
    required this.password,
    required this.userName,
    String? token,
  }) {
    if (token != null) {
      setToken = token;
    }
  }

  @override
  Map<String, dynamic> get toJson => {
        'username': userName,
        'password': password,
      };
}
