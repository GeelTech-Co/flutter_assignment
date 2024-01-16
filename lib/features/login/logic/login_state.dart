part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loadingLogin() = LoadingLogin;
  const factory LoginState.successLogin(LoginResponse data) = SuccessLogin;
  const factory LoginState.errorLogin({required String error}) = ErrorLogin;

  const factory LoginState.showPasswordState() = ShowPasswordState;

  const factory LoginState.loadingGetUser() = LoadingGetUser;
  const factory LoginState.successGetUser(LoginResponse data) = SuccessGetUser;
  const factory LoginState.errorGetUser({required String error}) = ErrorGetUser;

  const factory LoginState.loadingLogout() = LoadingLogout;
  const factory LoginState.successLogout(LoginResponse data) = SuccessLogout;
  const factory LoginState.errorLogout({required String error}) = ErrorLogout;
}
