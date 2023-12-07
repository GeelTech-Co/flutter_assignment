import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:assignment_test/features/homeLayOut/presentation/cubit/home_layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginTab extends StatefulWidget {
  const LoginTab({Key? key}) : super(key: key);

  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeLayoutCubit, HomeLayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppStrings.enterAValidName;
                  }
                  return null;
                },
                controller: _usernameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: AppStrings.userName,
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 8) {
                    return AppStrings.enterAValidPassword;
                  }
                  return null;
                },
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: HomeLayoutCubit.get(context).isObscure,
                decoration: InputDecoration(
                  labelText: AppStrings.password,
                  suffixIcon: IconButton(
                    icon: Icon(!HomeLayoutCubit.get(context).isObscure
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      HomeLayoutCubit.get(context).changeObscure();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        HomeLayoutCubit.get(context).logIn(
                            _usernameController.text, _passwordController.text);
                      }
                    },
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(AppStrings.logIn),
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
