import 'package:assignment_test/cubit/auth_cubit/auth_cubit.dart';
import 'package:assignment_test/cubit/auth_cubit/auth_state.dart';
import 'package:assignment_test/data/repositories/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginTab extends StatelessWidget {
  LoginTab({Key? key}) : super(key: key);

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthScreenCubit(AuthRepoImpl()),
      child: BlocConsumer<AuthScreenCubit, AuthScreenState>(
          listener: (context, state) {},
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
                        icon: Icon(isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
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
                          AuthScreenCubit.get(context).login(
                              _usernameController.text,
                              _passwordController.text);
                          //TODO Implement
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
          }),
    );
  }
}
