import 'package:assignment_test/cubit/auth_cubit/auth_state.dart';
import 'package:assignment_test/data/repositories/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreenCubit extends Cubit<AuthScreenState> {
  AuthScreenCubit(this.authRepo) : super(AuthScreenInitial());

  static AuthScreenCubit get(context) => BlocProvider.of(context);

  AuthRepo authRepo;
  Future<void> login(String userName, String password) {
    emit(LoginLoading());
    return authRepo
        .login(
      username: userName,
      password: password,
    )
        .then((value) {
      emit(LoginSuccess());
    }).catchError((error) {
      emit(LoginError(error: error.toString()));
    });
  }

  Future<void> getUser() {
    emit(GetUserLoading());
    return authRepo.getUser().then((value) {
      emit(GetUserSuccess());
    }).catchError((error) {
      emit(GetUserError(error: error.toString()));
    });
  }

  Future<void> logout() {
    emit(LogOutLoading());
    return authRepo.logout().then((value) {
      emit(LogOutSuccess());
    }).catchError((error) {
      emit(LogOutError(error: error.toString()));
    });
  }
}
