// auth_cubit.dart

import 'package:assignment_test/auth/auth_bloc/authstate.dart';
import 'package:assignment_test/data/repos/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreenCubit extends Cubit<AuthScreenState> {
  AuthScreenCubit(this.authRepo) : super(AuthScreenInitial());

  static AuthScreenCubit get(context) => BlocProvider.of(context);

  AuthRepo authRepo;

  Future<void> login(String userName, String password) async {
    emit(LoginLoading());
    try {
      // Use the login function from AuthRepo
      Map<String, dynamic> response = (await authRepo.login(username: userName, password: password)) as Map<String, dynamic>;

      // Check the response status and update the state accordingly
      if (response['status'] == 1) {
        emit(LoginSuccess());
      } else {
        emit(LoginError(error: response['message']));
      }
    } catch (error) {
      emit(LoginError(error: error.toString()));
    }
  }

  Future<void> getUser() async {
    emit(GetUserLoading());
    try {
      // Use the getUser function from AuthRepo
      Map<String, dynamic> response = (await authRepo.getUser()) as Map<String, dynamic>;

      // Check the response status and update the state accordingly
      if (response['status'] == 1) {
        emit(GetUserSuccess());
      } else {
        emit(GetUserError(error: response['message']));
      }
    } catch (error) {
      emit(GetUserError(error: error.toString()));
    }
  }

  Future<void> logout() async {
    emit(LogOutLoading());
    try {
      // Use the logout function from AuthRepo
      Map<String, dynamic> response = (await authRepo.logout()) as Map<String, dynamic>;

      // Check the response status and update the state accordingly
      if (response['status'] == 1) {
        emit(LogOutSuccess());
      } else {
        emit(LogOutError(error: response['message']));
      }
    } catch (error) {
      emit(LogOutError(error: error.toString()));
    }
  }
}
