import 'package:json_annotation/json_annotation.dart';
part 'authentication_model.g.dart';

@JsonSerializable()
class BaseResponsesData {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponsesData {
  AuthenticationResponse();

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationResponseToJson(this);
}
