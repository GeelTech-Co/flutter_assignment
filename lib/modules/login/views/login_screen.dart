import 'package:assignment_test/app/components.dart';
import 'package:assignment_test/app/functions.dart';
import 'package:assignment_test/helpers/service_locator.dart';
import 'package:assignment_test/modules/login/bloc/login_bloc/login_bloc.dart';
import 'package:assignment_test/modules/login/widgets/login_image.dart';
import 'package:assignment_test/modules/login/widgets/password_form_field.dart';
import 'package:assignment_test/network/error_handler.dart';
import 'package:assignment_test/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: BlocProvider(
        create: (context) => LoginBloc(getIt.get()),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (loginContext, loginState) {
            if (loginState is LoginError) {
              if (loginState.error == ResponseMessage.noInternetConnection) {
                showNoInternetConnectionSnackBar(context);
              }
            }
          },
          builder: (loginContext, loginState) {
            return ListView(
              children: [
                const LoginImage(),
                Text(StringsManager.userName,
                    style: Theme.of(context).textTheme.displayMedium),
                const SizedBox(height: 10),
                DefaultTextFormField(
                  hint: StringsManager.userNameHint,
                  controller: userNameController,
                ),
                const SizedBox(height: 20),
                Text(StringsManager.password,
                    style: Theme.of(context).textTheme.displayMedium),
                const SizedBox(height: 10),
                PasswordFormField(passwordController: passwordController),
                const SizedBox(height: 40),
                loginState is LoginLoading
                    ? const DefaultProgressIndicator()
                    : DefaultButton(
                        text: loginState is LoginSuccess
                            ? StringsManager.success
                            : StringsManager.login,
                        onPressed: loginState is LoginSuccess
                            ? null
                            : () {
                          if(
                          userNameController.text.isEmpty || passwordController.text.isEmpty
                          ){
                            showEnsuringUserNameAndPasswordDialog(context);
                          }else{
                                loginContext.read<LoginBloc>().add(LoginEvent(
                                    userName: userNameController.text,
                                    password: passwordController.text));
                          }
                              },
                      ),
                const SizedBox(height: 40),
              ],
            );
          },
        ),
      ),
    );
  }
}


