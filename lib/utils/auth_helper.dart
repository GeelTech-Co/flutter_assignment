import 'package:assignment_test/repositories/local_data/local_storage_imp.dart';
import 'package:assignment_test/resources/storage_strings.dart';

class AuthSetting {
  static final AuthSetting _instance = AuthSetting._();

  static AuthSetting get instance => _instance;

  factory AuthSetting() {
    return _instance;
  }

  AuthSetting._();

  String? _token;
  String? _userName;

  String? get token => _token;
  String? get userName => _userName;

  onOpen() {
    _token = LocalStorage.instance.getString(StorageStrings.token);
    _userName = LocalStorage.instance.getString(StorageStrings.userName);
  }

  Future onLogin({
    required String token,
    required String useerName,
  }) async {
    _token = token;
    _userName = userName;
    await LocalStorage.instance.setString(
      StorageStrings.token,
      token,
    );
    await LocalStorage.instance.setString(
      StorageStrings.userName,
      useerName,
    );
  }

  onLogout() async {
    _token = null;
    _userName = null;
    await LocalStorage.instance.deleteData(StorageStrings.token);
    await LocalStorage.instance.deleteData(StorageStrings.userName);
  }
}
