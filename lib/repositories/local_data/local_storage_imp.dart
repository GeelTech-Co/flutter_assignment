import 'package:assignment_test/repositories/local_data/storage_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage implements StorageInterface {
  static final instance = LocalStorage._internal();

  LocalStorage._internal();

  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  Future<void> setString(String key, String data) async {
    await _prefs.setString(key, data);
  }

  @override
  Future<void> deleteData(String key) async {
    await _prefs.remove(key);
  }

  @override
  bool? getBool(String key) {
    return _prefs.getBool(key);
  }

  @override
  String? getString(String key) {
    return _prefs.getString(key);
  }

  @override
  Future setBool(String key, bool val) async {
    await _prefs.setBool(key, val);
  }

  @override
  Future setInt(String key, int val) async {
    await _prefs.setInt(key, val);
  }

  @override
  int? getInt(String key) {
    return _prefs.getInt(key);
  }
}
