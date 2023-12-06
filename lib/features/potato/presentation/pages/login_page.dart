import 'package:flutter/material.dart';
import '../../../../core/utils/app_strings.dart';
import '../widget/defult_button.dart';
import '../widget/email_felid.dart';
import '../widget/password_feild.dart';

class LoginTab extends StatelessWidget {
  LoginTab({Key? key}) : super(key: key);
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  var fromKey = GlobalKey<FormState>();

  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          EmailFelid(controller: usernameController),
          PasswordFelid(
            controller: passwordController,
            onPressed: () {},
          ),
          DefaultButton(
            name: AppStrings.login ,
            onPressed: () async {
              if (fromKey.currentState!.validate()) {}
            },
          )
        ],
      ),
    );
  }
}
