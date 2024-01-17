import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:assignment_test/core/enums/enum_state.dart';
import 'package:assignment_test/core/utils/app_colors.dart';
import 'package:assignment_test/core/widgets/main_button.dart';
import 'package:assignment_test/core/widgets/custom_form_field.dart';
import 'package:assignment_test/features/auth/domain/entities/sing_in_params.dart';
import 'package:assignment_test/features/auth/presentation/providers/auth_provider.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pro = context.watch<AuthProvider>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomFormField(
            label: 'Email',
            hintText: 'Email',
            controller: emailController,
            prefixIcon: const Icon(Icons.email),
            validator: (val) {
              if (val == null || val.isEmpty) {
                return 'Field is Required';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          CustomFormField(
            label: 'Password',
            hintText: 'Password',
            obscureText: pro.obscureText,
            controller: passwordController,
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: GestureDetector(
              onTap: pro.changePassVisibility,
              child: Icon(
                pro.obscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (val) {
              if (val == null || val.isEmpty) {
                return 'Field is Required';
              }
              return null;
            },
          ),
          const SizedBox(height: 60),
          Visibility(
            visible: pro.singInState != States.loading,
            replacement: const CupertinoActivityIndicator(
              radius: 16,
              color: AppColors.primary,
            ),
            child: MainButton(
              text: 'Sign in',
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  final params = SingInParams(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );
                  await pro.singIn(params);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
