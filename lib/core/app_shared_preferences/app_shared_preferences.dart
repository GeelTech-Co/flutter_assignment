import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  static final Future<SharedPreferences> _prefs =
      SharedPreferences.getInstance();

  static setString(String key, String value) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.setString(key, value);
  }

  static setInt(String key, int value) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.setInt(key, value);
  }

  static getString(String key) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(key);
  }

  static Future<int?> getInt(String key) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getInt(key);
  }

  static clear() async {
    final SharedPreferences prefs = await _prefs;
    prefs.clear();
  }

  /// remove value based on [key] the key was saved
  static remove(String key) async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove(key);
  }
}
