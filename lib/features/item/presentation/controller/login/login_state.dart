part of 'login_cubit.dart';

abstract class LoginState {
  const LoginState();
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginLoaded extends LoginState {
  final Authentication authentication;
  const LoginLoaded({required this.authentication});
}

class LoginError extends LoginState {
  final String message;
  const LoginError({required this.message});
}

class HeddenPassword extends LoginState {}
