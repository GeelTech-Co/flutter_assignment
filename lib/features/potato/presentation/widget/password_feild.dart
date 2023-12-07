import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../../core/utils/app_strings.dart';
import 'text_form_field.dart';

class PasswordFelid extends StatefulWidget {
  PasswordFelid({super.key, required this.controller, });
  final TextEditingController? controller;
  bool isObscure = false;

  @override
  State<PasswordFelid> createState() => _PasswordFelidState();
}

class _PasswordFelidState extends State<PasswordFelid> {
  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
      controller: widget.controller,
      hintText: AppStrings.password,
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: IconButton(
          icon: Icon(widget.isObscure ? Icons.visibility : Icons.visibility_off),
          onPressed: (){
            setState(() {
              widget.isObscure!=widget.isObscure;
            });
          }),
      obscureText: widget.isObscure,
      validator: (v) {
        if (v!.isEmpty) {
          return AppStrings.pleaseEnterYourPassword;
        }
        return null;
      },
    );
  }
}


