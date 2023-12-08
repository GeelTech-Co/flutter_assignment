import 'package:assignment_test/features/login/data/models/login_attributes.dart';
import 'package:assignment_test/features/login/presentation/controller/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/validation.dart';

class LoginTabBody extends StatefulWidget {
  const LoginTabBody({super.key});

  @override
  State<LoginTabBody> createState() => _LoginTabBodyState();
}

class _LoginTabBodyState extends State<LoginTabBody> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
              autofocus: false,
              controller: _usernameController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: "Username",
              ),
              validator: (value) {
                return UserValidation.userNameValidation(value!);
              }),
          TextFormField(
              autofocus: false,
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: isObscure,
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: IconButton(
                  icon:
                      Icon(isObscure ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {

                    });
                    isObscure = !isObscure;
                  },
                ),
              ),
              validator: (value) {
                return UserValidation.passwordValidation(
                    _passwordController.text);
              }),
          BlocConsumer<LoginCubit, LoginState>(
            builder: (BuildContext context, state) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () async {
                      LoginAttributes loginAttributes = LoginAttributes(
                        userName: _usernameController.text,
                        password: _passwordController.text,
                      );
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<LoginCubit>(context)
                            .login(loginAttributes: loginAttributes);
                      }
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: (state is LoginLoading) ? const CircularProgressIndicator(color: Colors.white,) :const Text('Login') ,
                      ),
                    )),
              );
            },
            listener: (BuildContext context, Object? state) {
              if (state is LoginFailure) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.message)));
              } else if (state is LoginSuccess) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Success')));
              }
            },
          )
        ],
      ),
    );
  }
}
