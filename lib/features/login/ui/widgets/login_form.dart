import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helpers/app_color.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../logic/login_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.bloc,
  });

  final LoginBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomTextFormField(
          controller: bloc.usernameController,
          keyboardType: TextInputType.text,
          icon: Icons.person_outline,
          onChanged: (value) {},
          labelText: 'Username',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
        ),
        const VerticalSpace(12),
        CustomTextFormField(
          controller: bloc.passwordController,
          keyboardType: TextInputType.visiblePassword,
          obscureText: bloc.isHiddenPassword,
          onChanged: (value) {},
          labelText: 'Password',
          icon: Icons.password_outlined,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
          suffixIcon:
              bloc.isHiddenPassword ? Icons.visibility : Icons.visibility_off,
          onPressedSuffixIcon: () => bloc.add(const ShowPasswordEvent()),
        ),
        const VerticalSpace(12),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 48,
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return ElevatedButton(
                    onPressed: () async {
                      if (state is LoadingLogin) {
                        return;
                      }
                      bloc.validateThenDoLogin();
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: state is LoadingLogin
                            ? const CircularProgressIndicator.adaptive(
                                backgroundColor: AppColor.whiteColor,
                              )
                            : const Text('Login'),
                      ),
                    ));
              },
            ),
          ),
        )
      ],
    );
  }
}
