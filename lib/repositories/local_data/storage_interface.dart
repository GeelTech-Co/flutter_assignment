abstract class StorageInterface {
  String? getString(String key);
  bool? getBool(String key);
  int? getInt(String key);
  Future setString(String key, String data);
  Future deleteData(String key);
  Future setBool(String key, bool val);
  Future setInt(String key, int val);
}
