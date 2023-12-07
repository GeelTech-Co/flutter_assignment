import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
  });

  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final String? labelText;
  final String? Function(String?)? validator;
  final bool obscureText;
 final TextInputType? keyboardType;
 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType:keyboardType ,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        labelText: hintText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
