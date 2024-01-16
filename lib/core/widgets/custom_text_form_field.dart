import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../helpers/app_color.dart';
import '../helpers/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
        this.textInputAction = TextInputAction.next,
        this.keyboardType = TextInputType.text,
        this.controller,
        this.obscureText = false,
        required this.onChanged,
        required this.validator,
        required this.labelText,
        this.icon,
        this.suffixIcon,
        this.onPressedSuffixIcon,
        this.enabled = true,
        this.isFilled = false,
        this.focusNode,
        this.onTap,
        this.autofocus = false,
        this.onFieldSubmitted,
        this.maxLines = 1,
        this.minLines = 1,
        this.inputFormatters,
      });

  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final TextEditingController ? controller;
  final bool obscureText;
  final bool enabled;
  final bool ? isFilled;
  final void Function(String)? onChanged;
  final void Function(String?)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final String labelText;
  final IconData? icon;
  final IconData? suffixIcon;
  final void Function()? onPressedSuffixIcon;
  final FocusNode? focusNode;
  final void  Function()? onTap;
  final bool  autofocus;
  final int ? minLines;
  final int ? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      minLines: minLines,
      onFieldSubmitted: onFieldSubmitted,
      showCursor: true,
      autofocus: autofocus,
      onTap: onTap,
      cursorColor: AppColor.primaryColor,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        suffixIcon: IconButton(icon: Icon(suffixIcon),onPressed: onPressedSuffixIcon),
        filled: isFilled ?? !enabled,
        enabled: enabled,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        label: Text(
          labelText,
          style: Styles.textStyle10,
        ),
        prefixIcon: FittedBox(
          fit: BoxFit.scaleDown,
          child:  Icon(
            icon,
            color: AppColor.greyColor,
            size: 18,
          ),
        ),
      ),
      onChanged: onChanged,
      validator: validator,
      controller: controller,
      focusNode: focusNode,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      enabled: enabled,
    );
  }
}
