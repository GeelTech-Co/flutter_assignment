import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/app_colors.dart';
import '../../../../config/app_text_styles.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.obscureText = false,
  });

  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final String? labelText;
  final String? Function(String?)? validator;
  final bool obscureText;
 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.visiblePassword,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        labelText: hintText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
