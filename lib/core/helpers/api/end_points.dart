class APIEndPoints {
  // ======================== Base Url ========================
  static const String baseURL = 'https://brandstore.trustnet.ps/api';

  // ======================== Auth End Points ========================
  static const String signIn = '$baseURL/login';
  static const String signOut = '$baseURL/logout';
  static const String getUser = '$baseURL/get_user';
  static const String item = '$baseURL/item';
  static const String items = '$baseURL/items';
}
