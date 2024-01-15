import 'package:assignment_test/viewmodel/login/login_cont.dart';
import 'package:assignment_test/views/logged_in/logged_in_view.dart';
import 'package:assignment_test/views/login/widgets/login_textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginTab extends ConsumerWidget {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cont = ref.watch(loginNotifier);
    return !cont.isLoggedin ? const _LoginFields() : const LoggedInView();
  }
}

class _LoginFields extends ConsumerStatefulWidget {
  const _LoginFields();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __LoginFieldsState();
}

class __LoginFieldsState extends ConsumerState<_LoginFields> {
  late TextEditingController _usernameController, _passwordController;

  @override
  void initState() {
    super.initState();

    _passwordController = TextEditingController();
    _usernameController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cont = ref.watch(loginNotifier);
    return Column(
      children: [
        LoginTextFiled(
          cont: _usernameController,
          lableTxt: 'Username',
          err: cont.userNameErr,
        ),
        LoginTextFiled(
          cont: _passwordController,
          lableTxt: 'Password',
          isPassword: true,
          err: cont.passErr,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () async {
              cont.login(
                context: context,
                userName: _usernameController.text.trim(),
                pass: _passwordController.text.trim(),
              );
            },
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Text('Login'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
