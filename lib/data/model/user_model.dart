import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  const UserModel({
    required this.status,
    required this.message,
    required this.data,
  });

  final int? status;
  final String? message;
  final Data? data;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      status: json["status"],
      message: json["message"],
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );
  }

  @override
  List<Object?> get props => [
        status,
        message,
        data,
      ];
}

class Data extends Equatable {
  const Data({
    required this.user,
  });

  final User? user;

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      user: json["user"] == null ? null : User.fromJson(json["user"]),
    );
  }

  @override
  List<Object?> get props => [
        user,
      ];
}

class User extends Equatable {
  const User({
    required this.id,
    required this.name,
  });

  final int? id;
  final String? name;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      name: json["name"],
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
