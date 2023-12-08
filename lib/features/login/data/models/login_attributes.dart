class LoginAttributes{
  String userName;
  String password;

  LoginAttributes({required this.userName,required this.password});

  Map<String,dynamic> toJson(){
    return {
      "username":userName,
      'password':password,
    };
  }
}