import 'dart:async';

import 'package:assignment_test/modules/login/repository/login_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository;

  LoginBloc(this.loginRepository) : super(LoginInitial()) {
    on<LoginEvent>(_login);
  }

  FutureOr<void> _login(LoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    await loginRepository
        .login(userName: event.userName, password: event.password)
        .then((result) => result.fold((error) {
              emit(LoginError(error.message));
            }, (response) {
              emit(LoginSuccess(response));
            }));
  }
}
