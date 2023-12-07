import 'package:assignment_test/config/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  ///FontSize
  static const TextStyle fontSize9 = TextStyle(fontSize: 9);

  static const TextStyle fontSize23 = TextStyle(fontSize: 23);

  ///FontWeight

  static const TextStyle fontWeight400 = TextStyle(fontWeight: FontWeight.w400);
  static const TextStyle fontWeight500 = TextStyle(fontWeight: FontWeight.w500);
  static const TextStyle fontWeightNormal =
      TextStyle(fontWeight: FontWeight.normal);

  ///Font Family
  static const TextStyle fontFamily = TextStyle();

  ///FontStyle

  static TextStyle get font23black500 => fontFamily
      .merge(fontWeight500)
      .merge(fontSize23)
      .copyWith(color: AppColors.blackColor);
}
