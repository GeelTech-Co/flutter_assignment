import 'package:assignment_test/Services/auth_services.dart';
import 'package:assignment_test/Utils/user_utils.dart';
import 'package:flutter/material.dart';

import '../Models/Api/user.dart';
import '../Models/Responses/HttpResponse.dart';


class AuthController with ChangeNotifier {
   AuthServices _authServices = AuthServices();

  User? user;

  Future<HttpResponse> login(
      String email, String password, String fcmToken) async {
    HttpResponse response =
    await _authServices.login(email, password);
    if (response.responseCode == 200 || response.responseCode == 401) {
      setUserInformation(response.data);

      UserUtils.initCurrentUser(response.data);
    }
    return response;
  }

  Future<HttpResponse> logout() async {
    _authServices = AuthServices();
    HttpResponse response = await _authServices.logout();

    if (response.responseCode == 200) {
      setUserInformation(null);

      UserUtils.logout();
    }

    return response;
  }

  void setUserInformation(User? user) {
    this.user = user;

    notifyListeners();
  }


}
