import 'package:flutter/material.dart';

enum TextFieldType {
  userName,
  password,
}

class ValidationUtils {
  static String? getValidation({
    required TextFieldType type,
    required BuildContext context,
    required dynamic value,
  }) {
    switch (type) {
      case TextFieldType.userName:
        {
          if (value.trim().isEmpty) {
            return 'Please enter your username.';
          }
          return null;
        }
      case TextFieldType.password:
        {
          if (value.trim().isEmpty) {
            return 'Please enter your Password.';
          } else if (value.trim().length < 8) {
            return 'Must be 8+ characters.';
          } else if (!RegExp("(?=.*[A-Z])").hasMatch(value)) {
            return 'Must contain at-least one uppercase.';
          } else if (!value.toString().contains(RegExp(r'[0-9]'))) {
            return 'Must contain at-least one number.';
          }

          return null;
        }

      default:
        if (value.isEmpty) {
          return "";
        }
        return null;
    }
  }
}
