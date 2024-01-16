// cache_helper.dart

import 'package:shared_preferences/shared_preferences.dart';

// CacheHelper That's Connect and Talk to local database.
class CacheHelper {
  static late SharedPreferences sharedPreferences;

  // Here The Initialize of cache.
  static Future<void> init() async {
    try {
      sharedPreferences = await SharedPreferences.getInstance();
    } catch (e) {
      print('Error initializing SharedPreferences: $e');
      // Handle the error accordingly (throw, log, etc.)
    }
  }

  // this fun to put data in local data base using key
  static Future<bool> save({
    required String key,
    required dynamic value,
  }) async {
    if (sharedPreferences == null) {
      await init(); // Ensure that SharedPreferences is initialized
    }

    if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else if (value is double) {
      return await sharedPreferences.setDouble(key, value);
    } else {
      return await sharedPreferences.setInt(key, value);
    }
  }

  // this fun to get data already saved in local data base
  static dynamic get({
    required String key,
  }) {
    if (sharedPreferences == null) {
      throw Exception("SharedPreferences not initialized");
    }
    return sharedPreferences.get(key);
  }

  // remove data using a specific key
  static Future<bool> remove({required key}) async {
    if (sharedPreferences == null) {
      await init(); // Ensure that SharedPreferences is initialized
    }
    return await sharedPreferences.remove(key);
  }

  // clear all data in the local data base
  static Future<bool> clear() async {
    if (sharedPreferences == null) {
      await init(); // Ensure that SharedPreferences is initialized
    }
    return await sharedPreferences.clear();
  }
}
