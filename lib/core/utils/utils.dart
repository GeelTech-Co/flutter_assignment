import 'package:assignment_test/core/thems/colors.dart';
import 'package:flutter/material.dart';

class Utils {
  static Future<void> showToast({
    required BuildContext context,
    required String message,
    Color? backgroundColor,
  }) async {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: backgroundColor ?? AppColors.green,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
