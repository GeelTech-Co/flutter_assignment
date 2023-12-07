// login_cubit.dart
import 'package:assignment_test/features/login/services/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
  
 
enum LoginState { initial, loading, success, error }

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo = LoginRepo();

  LoginCubit() : super(LoginState.initial);

  Future<void> login(String username, String password) async {
    try {
      emit(LoginState.loading);

      await _loginRepo.login(username, password);

      emit(LoginState.success);
    } catch (error) {
      emit(LoginState.error);
    }
  }
}
