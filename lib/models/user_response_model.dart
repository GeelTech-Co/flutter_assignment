class UserResponse {
  final num? status;
  final String? message;
  UserResponse({
    required this.status,
    required this.message,
  });

  factory UserResponse.fromJson(dynamic json) =>
      UserResponse(status: json['status'], message: json['message']);
}
