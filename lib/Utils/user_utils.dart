import 'package:assignment_test/Models/Api/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Api/current_user.dart';

class UserUtils {
  static SharedPreferences? preferences;

  static bool firstUse = true;

  static initCurrentUser(User user) async {
    CurrentUser.name = user.name;
    CurrentUser.id = user.id;
    CurrentUser.id = user.id;
    fetchUserInformationToShared();
  }

  static Future<void> fetchUserInformationToShared() async {
    preferences = await SharedPreferences.getInstance();
    if (CurrentUser.name != null) {
      preferences!.setString("name", CurrentUser.name!);
    }
    if (CurrentUser.token != null) {
      preferences!.setString("token", CurrentUser.token!);
    }
    if (CurrentUser.id != null) {
      preferences!.setInt("id", CurrentUser.id!);
    }
    await preferences!.commit();
  }

  static Future<void> fetchUserInformationFromSharedToSingletonClass() async {
    preferences = await SharedPreferences.getInstance();
    String? token = preferences!.getString("token");
    String? name = preferences!.getString("name");
    int? id = preferences!.getInt("id");

    CurrentUser.token = token;
    CurrentUser.name = name;
    CurrentUser.id = id;
  }

  static Future<void> logout() async {
    SharedPreferences preferences;

    preferences = await SharedPreferences.getInstance();

    await preferences.clear();

    CurrentUser.name = null;
    CurrentUser.id = null;
  }

  static Future<void> signOut() async {
    SharedPreferences preferences;

    preferences = await SharedPreferences.getInstance();

    await preferences.clear();

    CurrentUser.id = null;
    CurrentUser.name = null;
  }
}
