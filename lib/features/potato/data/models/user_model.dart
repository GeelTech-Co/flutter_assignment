import '../../domain/entities/user_entite.dart';

class UserModel  extends User{

   UserModel({required super.userName,required super.password});

 factory UserModel.fromJson(Map<String, dynamic> json) =>UserModel (
    userName: json["username"],
    password:json["password"],
  );

}
