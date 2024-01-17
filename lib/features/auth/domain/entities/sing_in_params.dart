import 'package:equatable/equatable.dart';

class SingInParams extends Equatable {
  final String email;
  final String password;

  const SingInParams({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
