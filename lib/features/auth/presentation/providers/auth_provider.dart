import 'package:flutter/material.dart';
import 'package:assignment_test/core/enums/enum_state.dart';
import 'package:assignment_test/config/routes/app_routes.dart';
import 'package:assignment_test/config/routes/routes_names.dart';
import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:assignment_test/features/auth/domain/entities/sing_in_params.dart';
import 'package:assignment_test/features/auth/domain/usecases/sing_in_usecase.dart';
import 'package:assignment_test/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:assignment_test/features/auth/domain/usecases/sing_out_usecase.dart';

class AuthProvider extends ChangeNotifier {
  final SingInUseCase singInUseCase;
  final SingOutUseCase singOutUseCase;
  final GetUserDataUseCase getUserDataUseCase;

  AuthProvider({
    required this.singInUseCase,
    required this.singOutUseCase,
    required this.getUserDataUseCase,
  });

  bool obscureText = true;
  void changePassVisibility() {
    obscureText = !obscureText;
    notifyListeners();
  }

  States singInState = States.initial;
  Future<void> singIn(SingInParams params) async {
    singInState = States.loading;
    notifyListeners();
    try {
      await Future.delayed(const Duration(seconds: 5));
      final res = await singInUseCase.call(params);
      if (res != null) {
        goAndFinish(RoutesNames.layout);
        token = res.data!.token;
        singInState = States.success;
        notifyListeners();
      }
    } catch (e) {
      singInState = States.error;
      notifyListeners();
    } finally {
      singInState = States.initial;
      notifyListeners();
    }
  }

  Future<void> singOut() async {
    final res = await singOutUseCase.call();
    if (res != null) {
      token = '';
      goAndFinish(RoutesNames.signIn);
    }
  }

  States getUserDataState = States.initial;
  Future<void> getUserData() async {
    getUserDataState = States.loading;
    notifyListeners();
    try {
      await Future.delayed(const Duration(seconds: 5));
      final res = await getUserDataUseCase.call();
      if (res != null) {
        goAndFinish(RoutesNames.layout);
      }
      getUserDataState = States.success;
      notifyListeners();
    } catch (e) {
      getUserDataState = States.error;
      notifyListeners();
    } finally {
      getUserDataState = States.initial;
      notifyListeners();
    }
  }
}
