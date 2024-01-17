import 'dart:developer';
import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:assignment_test/features/auth/data/models/sign_in_response.dart';
import 'package:assignment_test/features/auth/domain/repositories/auth_repo.dart';
import 'package:assignment_test/features/auth/domain/entities/sing_in_params.dart';
import 'package:assignment_test/features/auth/domain/entities/sign_in_response.dart';
import 'package:assignment_test/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:assignment_test/features/auth/data/datasources/auth_remote_data_source.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationLocalDataSource authenticationLocalDataSource;
  final AuthenticationRemoteDataSource authenticationRemoteDataSource;

  AuthenticationRepositoryImpl({
    required this.authenticationLocalDataSource,
    required this.authenticationRemoteDataSource,
  });

  @override
  Future<SignInResponse?> getUserData() async {
    if (getDataFromAPI) {
      try {
        final res = await authenticationRemoteDataSource.getUserData();
        return res;
      } catch (e) {
        log(e.toString());
        return null;
      }
    } else {
      try {
        final res = await authenticationLocalDataSource.getUserData();
        return res;
      } catch (e) {
        log(e.toString());
        return null;
      }
    }
  }

  @override
  Future<SignInResponseModel?> signIn(SingInParams params) async {
    if (getDataFromAPI) {
      try {
        final res = await authenticationRemoteDataSource.signIn(params);
        return res;
      } catch (e) {
        log(e.toString());
        return null;
      }
    } else {
      try {
        final res = await authenticationLocalDataSource.signIn(params);
        return res;
      } catch (e) {
        log(e.toString());
        return null;
      }
    }
  }

  @override
  Future<String?> signOut() async {
    if (getDataFromAPI) {
      try {
        final res = await authenticationRemoteDataSource.signOut();
        return res;
      } catch (e) {
        log(e.toString());
        return '';
      }
    } else {
      try {
        final res = await authenticationLocalDataSource.signOut();
        return res;
      } catch (e) {
        log(e.toString());
        return '';
      }
    }
  }
}
