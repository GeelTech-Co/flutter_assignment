import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.labelText,
    required this.textEditingController,
    required this.validator,
    this.isObscurePassword = false,
    this.suffix,
    this.textInputType,
  });
  final String labelText;
  final TextEditingController textEditingController;
  final Widget? suffix;
  final TextInputType? textInputType;
  final bool isObscurePassword;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: textEditingController,
        keyboardType: TextInputType.visiblePassword,
        obscureText: isObscurePassword,
        validator: validator,
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: suffix,
        ),
      ),
    );
  }
}
