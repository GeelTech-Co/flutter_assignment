import 'package:assignment_test/features/authorization/data/models/user_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/app_shared_preferences/app_shared_preferences.dart';
import '../../data/datasources/user_data_source.dart';

class AuthProvider with ChangeNotifier {
  final UserDataSourceImpl userDataSourceImpl;

  AuthProvider({required this.userDataSourceImpl}) {
    authStream();
  }

  bool isAuthenticated = false;
  UserDataModel? userDataModel;
  String error = '';
  bool isLoading = false;

  authStream() async {
    int? id = await AppSharedPreferences.getInt("id");
    if (id != null) {
      getUser(id: id);
    }
  }

  void getUser({required int id}) async {
    try {
      UserDataModel? user = await userDataSourceImpl.getUser(id: id);
      if (user != null) {
        userDataModel = user;
        isAuthenticated = true;
        error = '';
        isLoading = false;
        notifyListeners();
      } else {
        error = 'User Not Found.';
        isLoading = false;
        notifyListeners();
      }
    } on Exception catch (e) {
      error = 'User Not Found.';
      isLoading = false;
      notifyListeners();
    }
  }

  void login({required String userName, required String password}) async {
    isLoading = true;
    notifyListeners();
    try {
      UserDataModel? user = await userDataSourceImpl.login(
          userName: userName, password: password);
      if (user != null) {
        userDataModel = user;
        isAuthenticated = true;
        error = '';
        isLoading = false;

        notifyListeners();
      } else {
        error = 'User Not Found.';
        isLoading = false;
        notifyListeners();
      }
    } on Exception catch (e) {
      error = "Your credential is wrong";
      isLoading = false;
      notifyListeners();
    }
  }

  void logout() async {
    try {
      await userDataSourceImpl.logout();
      userDataModel = null;
      isAuthenticated = false;
      error = '';
      isLoading = false;
      notifyListeners();
    } on Exception catch (e) {}
  }
}
