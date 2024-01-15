import 'package:assignment_test/models/auth/login_models.dart';
import 'package:assignment_test/repositories/remote_data/remote_repository.dart';
import 'package:assignment_test/resources/assets_responses.dart';
import 'package:assignment_test/utils/auth_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginNotifier = ChangeNotifierProvider<LoginViewModel>((ref) {
  return LoginViewModel(
    AuthSetting.instance.token != null ? true : false,
    AuthSetting.instance.userName,
  );
});

class LoginViewModel extends ChangeNotifier {
  LoginViewModel(this._isLoggedIn, this._userName);

  bool _isLoggedIn = false;
  String? _token;

  String? _userName;

  bool get isLoggedin => _isLoggedIn;

  String get loggedUserName => _userName!;

  String? _userNameError;
  String? _passError;

  String? get userNameErr => _userNameError;
  String? get passErr => _passError;

  Future login({
    required BuildContext context,
    required String userName,
    required String pass,
  }) async {
    bool isVaild = _validateFields(userName, pass);
    if (!isVaild) {
      return;
    }
    bool isLogged =
        await _loginApi(LoginModel(password: pass, userName: userName));
    if (!isLogged) {
      return;
    }
    await AuthSetting.instance.onLogin(
      token: _token!,
      useerName: _userName!,
    );
    _isLoggedIn = true;
    notifyListeners();
  }

  bool _validateFields(String userName, String pass) {
    _userNameError = null;
    _passError = null;
    if (userName.isEmpty) {
      _userNameError = 'Please enter your userName';
    }
    if (pass.isEmpty) {
      _passError = 'Please enter your password';
    }
    if (_passError != null || _userNameError != null) {
      notifyListeners();
      return false;
    }
    notifyListeners();
    return true;
  }

  Future<bool> _loginApi(LoginModel req) async {
    try {
      await Repository.instance.client.login(req: req);
    } catch (e) {
      debugPrint(e.toString());
    }
    LoginRes res = LoginRes.fromJson(AssetsFile.instance.jsonRes['login']);
    _token = res.data.token;
    _userName = res.data.user.name;
    return true;
  }

  Future<bool> _logOutApi() async {
    try {
      await Repository.instance.client.logout();
    } catch (e) {
      debugPrint(e.toString());
    }
    GenericRes res = GenericRes.fromJson(AssetsFile.instance.jsonRes['logout']);
    debugPrint(res.toString());
    return true;
  }

  Future logout() async {
    _isLoggedIn = false;
    await _logOutApi();
    await AuthSetting.instance.onLogout();
    notifyListeners();
  }
}
