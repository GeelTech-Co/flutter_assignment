import 'package:assignment_test/cubit/main_cubit.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginTab extends StatelessWidget {
  LoginTab({Key? key}) : super(key: key);

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
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
                    icon: Icon(
                        isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      isObscure = !isObscure;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () async {
                        Connectivity().onConnectivityChanged.listen((ConnectivityResult connectivityResult) {
                            if (connectivityResult == ConnectivityResult.none) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('No internet connection'),
                                  duration: Duration(seconds: 5),
                                ),
                              );
                            } else {
                              MainCubit.get(context)
                                  .login(
                                _usernameController.text,
                                _passwordController.text,
                              )
                                  .then((value) {
                                if (MainCubit.get(context).loginResponse.status ==
                                    1) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          'Login successful: ${MainCubit.get(context).loginResponse.message}'),
                                      duration: const Duration(seconds: 5),
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          'Login failed: ${MainCubit.get(context).loginResponse.message}'),
                                      duration: const Duration(seconds: 5),
                                    ),
                                  );
                                }
                              });
                            }
                          });


                    },
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text('Login'),
                      ),
                    )),
              )
            ],
          ),
        );
      },
    );
  }
}
