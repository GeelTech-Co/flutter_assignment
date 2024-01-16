// login.dart

import 'package:assignment_test/auth/auth_bloc/authBloc%20.dart';
// import 'package:assignment_test/auth/auth_bloc/authBloc.dart';
import 'package:assignment_test/auth/auth_bloc/authstate.dart';
import 'package:assignment_test/data/repos/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginTab extends StatefulWidget {
  LoginTab({Key? key}) : super(key: key);

  @override
  _LoginTabState createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthScreenCubit(AuthRepoImpl()),
      child: BlocConsumer<AuthScreenCubit, AuthScreenState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            // Navigate to the next screen or perform any action upon successful login
          } else if (state is LoginError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _usernameController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      AuthScreenCubit.get(context).login(
                        _usernameController.text,
                        _passwordController.text,
                      );
                    },
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text('Login'),
                      ),
                    ),
                  ),
                ),
                if (state is LoginLoading)
                  CircularProgressIndicator(),
              ],
            ),
          );
        },
      ),
    );
  }
}
