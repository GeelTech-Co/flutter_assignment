// ignore_for_file: use_build_context_synchronously

import 'package:assignment_test/config/enum/get_data_status.dart';
import 'package:assignment_test/data/helper/validator.dart';
import 'package:assignment_test/data/local/hive.dart';
import 'package:assignment_test/data/model/login_request.dart';
import 'package:assignment_test/data/model/result_api.dart';
import 'package:assignment_test/data/repository/registration_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> with AppValidator {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  final BuildContext context;
  LoginCubit({
    required this.context,
  }) : super(const LoginState()) {
    getUserData();
  }
  Future<void> getUserData() async {
    String? userToken = await context.read<HiveStorg>().getToken();
    if (userToken != null) {
      RegistrationRepository registrationRepository = RegistrationRepository();
      ResultApi resultApi =
          await registrationRepository.getUser(token: userToken);
      if (resultApi.isDone) {
        emit(state.copyWith(
          name: resultApi.massage,
        ));
      }
    }
  }

  void showAndHidePassword() {
    emit(state.copyWith(
      isObscurePassword: !state.isObscurePassword,
    ));
  }

  Future<void> login() async {
    if (keyForm.currentState!.validate()) {
      RegistrationRepository registrationRepository = RegistrationRepository();
      emit(state.copyWith(
        getDataStatus: GetDataStatus.loading,
      ));
      String password = passwordController.text.trim();
      String userName = userNameController.text.trim();
      LoginRequest loginRequest = LoginRequest(
        password: password,
        userName: userName,
      );
      ResultApi resultApi =
          await registrationRepository.login(baseClassRequest: loginRequest);

      if (resultApi.isDone) {
        (String, String) tokenAndName = resultApi.massage;
        context.read<HiveStorg>().setToken(tokenAndName.$1);
        emit(state.copyWith(
          name: tokenAndName.$2,
          getDataStatus: GetDataStatus.successful,
        ));
      } else {
        emit(state.copyWith(
          errorMassage: resultApi.massage,
          getDataStatus: GetDataStatus.field,
        ));
      }
    }
  }

  void restDialog() {
    emit(state.copyWith(
      getDataStatus: GetDataStatus.init,
      errorMassage: '',
    ));
  }
}
