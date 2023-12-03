import 'dart:developer';

import 'package:assignment_test/core/api/remote/dio_helper.dart';
import 'package:assignment_test/core/thems/colors.dart';
import 'package:assignment_test/core/utils/utils.dart';
import 'package:assignment_test/features/login/model/login_model.dart';
import 'package:assignment_test/features/login/presentation/bloc/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit of(BuildContext context) => BlocProvider.of<LoginCubit>(context);

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login(BuildContext context) async {
    emit(LoginLoadingState());
    await DioHelper.makeNetworkRequest(endpoint: 'login', context: context).then(
      (value) {
        if (usernameController.text != '' && passwordController.text != '') {
          value.forEach((key, element) {
            if (UserModel.fromJson(element).username == usernameController.text && UserModel.fromJson(element).password == passwordController.text) {
              Utils.showToast(context: context, message: 'Success', backgroundColor: AppColors.green);
            }
          });
        } else {
          Utils.showToast(context: context, message: 'You must input user name & password', backgroundColor: AppColors.red);
        }

        /*if (value.data['status'] == false) {
          log('object ${value.data['status']}');
          Utils.showToast(context: context, message: 'errorMessage', backgroundColor: AppColors.red);
        } else {
          log('object');
          Utils.showToast(context: context, message: 'errorMessage', backgroundColor: AppColors.green);

          emit(LoginSuccessState());
        }*/
      },
    );
  }

  bool isObscure = false;
  void changeObscure() {
    isObscure = !isObscure;
    emit(ChangeObscureState());
    log(isObscure.toString());
  }
}
