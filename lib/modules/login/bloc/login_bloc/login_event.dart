part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  final String userName;
  final String password;

  const LoginEvent({required this.userName, required this.password});

  @override
  List<Object> get props => [userName, password];
}
