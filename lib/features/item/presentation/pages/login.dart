import 'package:assignment_test/core/widget/toast_messages.dart';
import 'package:assignment_test/features/authentication/login/presentation/controller/login/login_cubit.dart';
import 'package:assignment_test/features/authentication/login/presentation/pages/widget/login_button.dart';
import 'package:assignment_test/features/authentication/login/presentation/pages/widget/username_password_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/custom_loading_indicator.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        if (state is LoginLoading) {
          return const CustomLoadingIndicator();
        } else if (state is LoginError) {
          errorBotToast(title: state.message);
          return Form(
            key: context.read<LoginCubit>().formKey,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserNamePasswordFormField(),
                LoginButton(),
              ],
            ),
          );
        } else {
          return Form(
            key: context.read<LoginCubit>().formKey,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserNamePasswordFormField(),
                LoginButton(),
              ],
            ),
          );
        }
      },
    );
  }
}
