import 'package:assignment_test/app/components.dart';
import 'package:assignment_test/modules/login/bloc/password_visibility_cubit/password_visibility_cubit.dart';
import 'package:assignment_test/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordFormField extends StatelessWidget {
  final TextEditingController? passwordController;
  const PasswordFormField({
    super.key, this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordVisibilityCubit(),
      child: BlocBuilder<PasswordVisibilityCubit, bool>(
        builder: (passwordVisibilityContext, passwordVisibilityState) {
          return DefaultTextFormField(
            controller: passwordController,
            hint: StringsManager.passwordHint,
            textInputType: TextInputType.visiblePassword,
            obscureText: passwordVisibilityContext
                .select((PasswordVisibilityCubit cubit) => !cubit.state),
            suffixIcon: IconButton(
                onPressed: () {
                  passwordVisibilityContext
                      .read<PasswordVisibilityCubit>()
                      .toggleVisibility();
                },

                icon: Icon(passwordVisibilityContext.select(
                        (PasswordVisibilityCubit cubit) => cubit.state
                        ? Icons.visibility_off
                        : Icons.visibility))),);
        },
      ),
    );
  }
}