import 'package:assignment_test/shared/app_constants.dart';
import 'package:assignment_test/shared/app_strings.dart';
import 'package:assignment_test/shared/shared_functions.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class LoginTabProvider extends ChangeNotifier {
  TextEditingController usernameEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();

  IconData passwordSuffixIcon = Icons.visibility_off;
  bool passwordObscure = true;

  void suffixPressed() {
    passwordObscure = !passwordObscure;

    // passwordSuffixIcon =
    //     passwordObscure ? Icons.visibility_off : Icons.visibility;
    notifyListeners();
  }

  Future<void> loginPressed({required BuildContext context}) async {
    checkInternetAccess(context);

    //In Case Api is working
    // ApiService.postLogin(
    //     username: usernameEditingController.text,
    //     password: passwordEditingController.text);
  }

  Future<void> checkInternetAccess(BuildContext context) async {
    final Connectivity connectivity = Connectivity();
    late ConnectivityResult connectionStatus;

    ConnectivityResult result;
    try {
      result = await connectivity.checkConnectivity();
    } on Exception {
      // print(e.toString());
      result = ConnectivityResult.none;
    }
    connectionStatus = result;

    connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      connectionStatus = result;
    });

    if (connectionStatus != ConnectivityResult.none) {
      // Perform your network-related task here
      // print('Performing network task');
    } else {
      // Show SnackBar if there's no internet connection
      showNoInternetSnackBar(
          context: context,
          text: AppStrings.noInternetConnection,
          backgroundColor: AppConstants.yellowColor);
    }

    notifyListeners();
  }

// Future<void> initConnectivity() async {
//   ConnectivityResult result;
//   try {
//     result = await _connectivity.checkConnectivity();
//   } on Exception catch (e) {
//     // print(e.toString());
//     result = ConnectivityResult.none;
//   }
//
//   _connectionStatus = result;
//   notifyListeners();
// }
}
