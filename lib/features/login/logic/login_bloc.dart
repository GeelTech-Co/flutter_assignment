import 'package:assignment_test/features/login/data/repo/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/helpers/constants.dart';
import '../../../core/helpers/local_storage_manager.dart';
import '../data/model/login_request_body.dart';
import '../data/model/login_response.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepo _loginRepo;
  LoginBloc(this._loginRepo) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) {});
    on<Login>((event, emit) => emitLogin(event, emit));
    on<ShowPasswordEvent>((event, emit) => showPasswordEvent(event, emit));
    on<GetUser>((event, emit) => emitGetUser(event, emit));
    on<Logout>((event, emit) => emitLogout(event, emit));
  }

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

  bool isHiddenPassword = true;
  showPasswordEvent(ShowPasswordEvent event, Emitter<LoginState> emit){
    emit(const LoginState.initial());
    isHiddenPassword = !isHiddenPassword;
    emit(const LoginState.showPasswordState());
  }

  emitLogin(Login event, Emitter<LoginState> emit) async {
    emit(const LoginState.loadingLogin());
    final response = await _loginRepo.login(event.loginRequestBody);
    response.when(
      success: (loginResponse) {
        saveToken(loginResponse.data!.token.toString());
        emit(LoginState.successLogin(loginResponse));
      },
      failure: (errorHandler) {
        emit(
          LoginState.errorLogin(
              error: errorHandler.errMessage),
        );
      },
    );
  }

  emitGetUser(GetUser event, Emitter<LoginState> emit) async {
    emit(const LoginState.loadingGetUser());
    final response = await _loginRepo.getUser();
    response.when(
      success: (userResponse) {
        emit(LoginState.successGetUser(userResponse));
      },
      failure: (errorHandler) {
        emit(
          LoginState.errorGetUser(
              error: errorHandler.errMessage),
        );
      },
    );
  }

  Future<void> saveToken(String value) async{
    sharedToken = value;
    await LocalStorageManager.saveData('token', value);
  }

  void validateThenDoLogin() {
    if (loginFormKey.currentState!.validate()) {
      add(LoginEvent.login(loginRequestBody: LoginRequestBody(userName: usernameController.text, password: passwordController.text)));
    }
  }

  emitLogout(Logout event, Emitter<LoginState> emit) async {
    emit(const LoginState.loadingLogout());
    final response = await _loginRepo.logout();
    response.when(
      success: (logoutResponse) async {
        await LocalStorageManager.remove('token');
        emit(LoginState.successLogin(logoutResponse));
      },
      failure: (errorHandler) {
        emit(
          LoginState.errorLogin(
              error: errorHandler.errMessage),
        );
      },
    );
  }
}
