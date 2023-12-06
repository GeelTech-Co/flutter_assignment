import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../../core/utils/app_strings.dart';
import 'text_form_field.dart';

class PasswordFelid extends StatelessWidget {
  PasswordFelid({super.key, required this.controller, required this.onPressed});
  final TextEditingController? controller;
  void Function()? onPressed;
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
      controller: controller,
      hintText: AppStrings.password,
      suffixIcon: IconButton(
          icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
          onPressed: onPressed),
      obscureText: isObscure,
      validator: (v) {
        if (!v.validateEmail()) {
          return AppStrings.pleaseEnterYourEmail;
        }
        return null;
      },
    );
  }
}


