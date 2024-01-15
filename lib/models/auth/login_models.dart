import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_models.g.dart';
part 'login_models.freezed.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    String? userName,
    String? password,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, Object?> json) =>
      _$LoginModelFromJson(json);
}

@freezed
class LoginRes with _$LoginRes {
  const factory LoginRes({
    required int status,
    required String message,
    required LoginData data,
  }) = _LoginRes;

  factory LoginRes.fromJson(Map<String, Object?> json) =>
      _$LoginResFromJson(json);
}

@freezed
class LoginData with _$LoginData {
  const factory LoginData({
    required String token,
    required UserData user,
  }) = _LoginData;

  factory LoginData.fromJson(Map<String, Object?> json) =>
      _$LoginDataFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    required int id,
    required String name,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}

@freezed
class GenericRes with _$GenericRes {
  const factory GenericRes({
    required int status,
    required String message,
  }) = _GenericRes;

  factory GenericRes.fromJson(Map<String, Object?> json) =>
      _$GenericResFromJson(json);
}
