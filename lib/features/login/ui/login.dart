import 'package:assignment_test/core/helpers/constants.dart';
import 'package:assignment_test/features/login/logic/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/login_form.dart';
import 'widgets/user_form.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is SuccessLogin) {
            bloc.add(const GetUser());
          }
        },
        builder: (context, state) {
          return Form(
            key: bloc.loginFormKey,
            child: sharedToken != null
                ? UserForm(bloc: bloc)
                : LoginForm(bloc: bloc),
          );
        },
      ),
    );
  }
}
