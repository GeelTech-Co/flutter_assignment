import 'package:assignment_test/core/utils/strings_manger.dart';
import 'package:assignment_test/core/utils/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/login/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: ElevatedButton(
          onPressed: () async {
            validateThenLogin(context);
          },
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(AppPadding.p4),
              child: Text(AppString.login),
            ),
          )),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login();
    }
  }
}
