import 'package:flutter/material.dart';
import 'package:assignment_test/core/utils/app_colors.dart';

class AppThemes {
  static get light => ThemeData.light().copyWith(
        colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
        ),
        inputDecorationTheme: InputDecorationTheme(
          iconColor: AppColors.secondary,
          prefixIconColor: AppColors.secondary,
          suffixIconColor: AppColors.secondary,
        ),
      );

  static get dark => ThemeData.light().copyWith(
        colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
        ),
        inputDecorationTheme: InputDecorationTheme(
          iconColor: AppColors.secondary,
          prefixIconColor: AppColors.secondary,
          suffixIconColor: AppColors.secondary,
        ),
      );
}
