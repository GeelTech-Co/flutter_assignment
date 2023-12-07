import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/email_felid.dart';
import '../widget/login_button.dart';
import '../widget/password_feild.dart';

class LoginTab extends StatelessWidget {
  LoginTab({Key? key}) : super(key: key);
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  var fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: ConnectivityWidgetWrapper(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            EmailFelid(controller: usernameController),
            PasswordFelid(
              controller: passwordController,
            ),
            SizedBox(
              height: 10.h,
            ),
            LoginButton(
                fromKey: fromKey,
                usernameController: usernameController,
                passwordController: passwordController),
          ],
        ),
      ),
    );
  }
}


