import 'package:equatable/equatable.dart';
import 'package:assignment_test/features/auth/data/models/sign_in_response.dart';

class SignInResponse extends Equatable {
  final int status;
  final String message;
  final SignInResponseDataModel? data;

  const SignInResponse({
    required this.data,
    required this.status,
    required this.message,
  });

  @override
  List<Object?> get props => [data, status, message];
}

class SignInResponseData extends Equatable {
  final String token;
  final UserModel? user;

  const SignInResponseData({
    required this.token,
    required this.user,
  });

  @override
  List<Object?> get props => [user, token];
}

class UserEntity extends Equatable {
  final int id;
  final String name;

  const UserEntity({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];
}
