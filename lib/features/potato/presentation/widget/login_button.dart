import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/services_locator.dart';
import '../../../../core/utils/app_strings.dart';
import '../../domain/usecases/login_use_case.dart';
import '../manager/cubit/potato_cubit.dart';
import '../widget/defult_button.dart';
class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.fromKey,
    required this.usernameController,
    required this.passwordController,
  });

  final GlobalKey<FormState> fromKey;
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PotatoCubit>(),
      child: BlocConsumer<PotatoCubit, PotatoState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state is LoadingLoginState
              ? const Center(child: CircularProgressIndicator())
              : DefaultButton(
                  name: AppStrings.login,
                  onPressed: () async {
                    if (fromKey.currentState!.validate()) {
                      context.read<PotatoCubit>().login(
                          userData: UserData(
                              userName: usernameController.text,
                              password: passwordController.text),
                          context: context);
                    }
                  },
                );
        },
      ),
    );
  }
}