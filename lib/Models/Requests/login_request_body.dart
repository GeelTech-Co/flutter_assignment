class LoginRequestBody {
  String userName;
  String password;
  String? fcmToken;

  LoginRequestBody(
      {required this.userName, required this.password,this.fcmToken});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = userName;
    data['password'] = password;
    data['fcm_token'] = fcmToken;

    return data;
  }
}
