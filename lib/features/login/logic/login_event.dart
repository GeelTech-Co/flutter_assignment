part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  const factory LoginEvent.login({required LoginRequestBody loginRequestBody}) = Login;
  const factory LoginEvent.showPasswordEvent() = ShowPasswordEvent;
  const factory LoginEvent.getUser() = GetUser;
  const factory LoginEvent.logout() = Logout;
}
