abstract class BaseClassRequest {
  Map<String, dynamic> get toJson;
  String? _token;
  set setToken(String token) {
    _token = token;
  }

  String? get getToken => _token;
}
