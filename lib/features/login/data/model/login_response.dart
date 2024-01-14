import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  int? status;
  String? message;
  DataInfo? data;


  LoginResponse({this.status, this.message, this.data});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class DataInfo {
  UserInfo ? user;
  String? token;

  DataInfo({this.user,this.token});

  factory DataInfo.fromJson(Map<String, dynamic> json) =>
      _$DataInfoFromJson(json);
}
@JsonSerializable()
class UserInfo {

  int? id;
  String? name;

  UserInfo({this.id,this.name});

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}