import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../../core/utils/app_strings.dart';
import 'text_form_field.dart';
class EmailFelid extends StatelessWidget {
  const EmailFelid({
    super.key,
    required this.controller,
  }) ;

  final TextEditingController? controller;


  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
      controller: controller,
      hintText: AppStrings.userName,
      keyboardType: TextInputType.emailAddress,
      validator: (v) {
        if (v!.isEmpty) {
            return AppStrings.pleaseEnterYourEmail;
          }
         
          return null;
        
      },
    );
  }
}