abstract class AuthScreenState {}

class AuthScreenInitial extends AuthScreenState {}

class LoginLoading extends AuthScreenState {}

class LoginSuccess extends AuthScreenState {}

class LoginError extends AuthScreenState {
  LoginError({required this.error});

  String error;

  @override
  String toString() => 'LoginError: $error';
}

class GetUserLoading extends AuthScreenState {}

class GetUserSuccess extends AuthScreenState {}

class GetUserError extends AuthScreenState {
  GetUserError({required this.error});

  String error;

  @override
  String toString() => 'GetUserError: $error';
}

class LogOutLoading extends AuthScreenState {}

class LogOutSuccess extends AuthScreenState {}

class LogOutError extends AuthScreenState {
  LogOutError({required this.error});

  String error;

  @override
  String toString() => 'LogOutError: $error';
}
