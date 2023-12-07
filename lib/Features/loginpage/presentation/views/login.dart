import 'dart:io';

import 'package:assignment_test/Features/loginpage/presentation/manger/login_bloc/login_bloc.dart';
import 'package:assignment_test/Features/loginpage/presentation/manger/login_bloc/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginTab extends StatefulWidget {
  LoginTab({Key? key}) : super(key: key);

  @override
  _LoginTabState createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isObscure = false;

  @override
  void initState() {
    super.initState();
    _checkInternetConnection();
  }

  Future<void> _checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        // Internet connection available
        print('Internet connection available');
      }
    } on SocketException catch (_) {
      // No internet connection
      print('No internet connection');
      _showNoInternetSnackBar();
    }
  }

  Future<void> _login(BuildContext context) async {
    // TODO: Implement login logic
  }

  void _showNoInternetSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('No internet connection!'),
        duration: Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogInBloc, LogInState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                controller: usernameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Username",
                ),
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: isObscure,
                decoration: InputDecoration(
                  labelText: "Password",
                  suffixIcon: IconButton(
                    icon:
                        Icon(isObscure ? Icons.visibility : Icons.visibility_off),
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
                    // BlocProvider.of<LogInBloc>(context).add(
                    //     LoginV(usernameController.text, passwordController.text));
                     if (usernameController.text == "username" &&
                        passwordController.text == "password") {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Succese"),
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Email or Password is not found"),
                      ));
                    }
                  },
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text('Login'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
