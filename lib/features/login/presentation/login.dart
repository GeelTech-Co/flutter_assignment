import 'package:assignment_test/features/login/presentation/bloc/login_cubit.dart';
import 'package:assignment_test/features/login/presentation/bloc/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextFormField(
          controller: LoginCubit.of(context).usernameController,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            labelText: "Username",
          ),
        ),
        BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) => TextFormField(
            controller: LoginCubit.of(context).passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: LoginCubit.of(context).isObscure,
            decoration: InputDecoration(
              labelText: "Password",
              suffixIcon: IconButton(
                icon: Icon(LoginCubit.of(context).isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  LoginCubit.of(context).changeObscure();
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () async {
                LoginCubit.of(context).login(context);
              },
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('Login'),
                ),
              )),
        )
      ],
    );
  }
}
