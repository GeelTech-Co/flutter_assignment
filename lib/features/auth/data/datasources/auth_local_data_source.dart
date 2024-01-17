import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:assignment_test/features/auth/data/models/sign_in_response.dart';
import 'package:assignment_test/features/auth/domain/entities/sing_in_params.dart';

abstract class AuthenticationLocalDataSource {
  Future<String> signOut();
  Future<SignInResponseModel?> getUserData();
  Future<SignInResponseModel?> signIn(SingInParams params);
}

class AuthenticationLocalDataSourceImpl
    implements AuthenticationLocalDataSource {
  @override
  Future<SignInResponseModel?> getUserData() async {
    final String jsonString =
        await rootBundle.loadString('assets/dummy_data/user_data.json');
    Map<String, dynamic> jsonData = json.decode(jsonString);
    return SignInResponseModel.fromJson(jsonData);
  }

  @override
  Future<SignInResponseModel?> signIn(SingInParams params) async {
    final String jsonString =
        await rootBundle.loadString('assets/dummy_data/sign_in.json');
    Map<String, dynamic> jsonData = json.decode(jsonString);
    return SignInResponseModel.fromJson(jsonData);
  }

  @override
  Future<String> signOut() async {
    return 'success';
  }
}
