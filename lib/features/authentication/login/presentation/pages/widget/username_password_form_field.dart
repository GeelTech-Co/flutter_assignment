import 'package:assignment_test/core/utils/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/login/login_cubit.dart';

class UserNamePasswordFormField extends StatelessWidget {
  const UserNamePasswordFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: context.read<LoginCubit>().emailController,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            labelText: AppString.username,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return AppString.pleaseEnterAValidEmail;
            }
            return null;
          },
        ),
        TextFormField(
          controller: context.read<LoginCubit>().passwordController,
          keyboardType: TextInputType.visiblePassword,
          obscureText: context.read<LoginCubit>().isObscure,
          decoration: InputDecoration(
            labelText: AppString.password,
            suffixIcon: IconButton(
              icon: Icon(context.read<LoginCubit>().isObscure
                  ? Icons.visibility
                  : Icons.visibility_off),
              onPressed: () {
                context.read<LoginCubit>().heddenPassword();
              },
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return AppString.pleaseEnterAValidPassword;
            }
            return null;
          },
        ),
      ],
    );
  }
}
