import 'package:equatable/equatable.dart';

class User extends Equatable {
  String userName;
  String password;
  User({required this.userName, required this.password });

  @override
  List<Object?> get props => [ userName ,password];
}