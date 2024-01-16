// api_end_point.dart

import 'dart:core';

class EndPoints {
  static const String kBaseUrl = 'http://localhost:8080'; // Add your base URL here
  static const String login = '/login';
  static const String getUser = '/get_user';
  static const String logout = '/logout';
  static const String items = '/get_Item';

  static Uri getLoginUrl() => Uri.parse('$kBaseUrl$login');
  static Uri getGetUserUrl() => Uri.parse('$kBaseUrl$getUser');
  static Uri getLogoutUrl() => Uri.parse('$kBaseUrl$logout');
  static Uri getItemsUrl() => Uri.parse('$kBaseUrl$items');
}
