import 'package:assignment_test/providers/login_tab_provider.dart';
import 'package:assignment_test/shared/app_strings.dart';
import 'package:assignment_test/shared/shared_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginTabProvider>(builder: (ctx, model, child) {
      return Form(
        key: model.key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            defaultTextFormField(
                controller: model.usernameEditingController,
                labelText: AppStrings.username),
            defaultTextFormField(
                controller: model.passwordEditingController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: model.passwordObscure,
                labelText: AppStrings.password,
                suffixIcon: IconButton(
                  icon: Icon(model.passwordObscure ? Icons.visibility_off : Icons.visibility),
                  onPressed: () => model.suffixPressed(),
                )),
            loginButton(
                onPressed: () async => model.loginPressed(context: context),
                text: AppStrings.login),
          ],
        ),
      );
    });
  }

  Widget loginButton(
      {required void Function()? onPressed, required String text}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: onPressed,
          child: Center(
            child: Text(text),
          )),
    );
  }
}
