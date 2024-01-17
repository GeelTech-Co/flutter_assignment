import 'package:assignment_test/features/auth/domain/entities/sign_in_response.dart';

class SignInResponseModel extends SignInResponse {
  const SignInResponseModel({
    required super.data,
    required super.status,
    required super.message,
  });

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) =>
      SignInResponseModel(
        status: json['status'] ?? 0,
        message: json['message'] ?? '',
        data: SignInResponseDataModel.fromJson(json['data']),
      );
}

class SignInResponseDataModel extends SignInResponseData {
  const SignInResponseDataModel({required super.user, required super.token});

  factory SignInResponseDataModel.fromJson(Map<String, dynamic> json) =>
      SignInResponseDataModel(
        token: json['token'] ?? '',
        user: UserModel.fromJson(json['user']),
      );
}

class UserModel extends UserEntity {
  const UserModel({required super.id, required super.name});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        name: json['name'],
      );
}
