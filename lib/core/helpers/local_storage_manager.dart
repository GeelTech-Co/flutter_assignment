import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageManager {

  LocalStorageManager._();

  static const _androidOptions = AndroidOptions(encryptedSharedPreferences: true);

  static const _iosOptions = IOSOptions(accessibility: KeychainAccessibility.first_unlock);

  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage(iOptions: _iosOptions,aOptions: _androidOptions);

  static Future<void> saveData(String key, dynamic value) async {

    if(value is String || value is bool || value is num){
     return await _secureStorage.write(key: key, value: value.toString());
    }
    if(value is List<dynamic>){
      return await _saveList(key,value);
    }
  }

  static Future<void> _saveList(String key, List<dynamic> value) async {
    String buffer = json.encode(value);
    await _secureStorage.write(key: key, value: buffer);
  }

  static Future<Set<String>?> getKeys() async => (await _secureStorage.readAll()).keys.toSet();

  static Future<String?> getData(String key) async => await _secureStorage.read(key: key);

  static Future<void> remove(String key) async => await _secureStorage.delete(key: key);

  static Future<void> clearAll() async => await _secureStorage.deleteAll();

}