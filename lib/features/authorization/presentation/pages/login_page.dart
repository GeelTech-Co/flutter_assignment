import 'package:assignment_test/features/authorization/presentation/providers/auth_provider.dart';
import 'package:assignment_test/utils/validation_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../components/Input/app_text_fields.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final  formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppTextField(
              controller: _usernameController,
              keyboardType: TextInputType.text,
              hintText: 'username',
              validator: (dynamic value) =>
                  ValidationUtils.getValidation(
                      type: TextFieldType.userName,
                      context: context,
                      value: value),
            ),
            AppTextField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              hintText: 'password',
              type: 'password',
              validator: (dynamic value) =>
                  ValidationUtils.getValidation(
                      type: TextFieldType.password,
                      context: context,
                      value: value),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () async {   
                    if (formKey.currentState!.validate()) {
                      FocusScope.of(context).unfocus();
                       authProvider.login(
                          userName: _usernameController.text.trim(),
                          password: _passwordController.text.trim());
                    }
                  },
                  child:  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: authProvider.isLoading ? const CircularProgressIndicator(color: Colors.red,): const Text('Login'),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
