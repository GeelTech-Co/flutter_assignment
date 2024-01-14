import 'package:flutter/material.dart';
import '../helpers/app_color.dart';
import '../helpers/constants.dart';

class AppTheme {

  static ThemeData lightThemeData() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
      //primarySwatch: NewColors.primaryColor,
      highlightColor: AppColor.whiteColor.withOpacity(0.2),
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        foregroundColor: AppColor.whiteColor,

      ),
      inputDecorationTheme:  InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide:
          const BorderSide(color: AppColor.primaryColor), // Change to the desired color
        ),
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: const BorderSide(color: AppColor.darkGreyColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: const BorderSide(color: AppColor.darkGreyColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: const BorderSide(color: AppColor.darkGreyColor),
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: const BorderSide(color: AppColor.redColor),
        ),

      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primaryColor,
            foregroundColor: AppColor.whiteColor,
            side: const BorderSide(
              color: AppColor.lightGreyColor,
              width: 1,
            ),
          )
      ),
      scaffoldBackgroundColor: AppColor.whiteColor,
      bottomNavigationBarTheme: const  BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: AppColor.lightGreyColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }

  static ThemeData darkThemeData() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: AppColor.darkGreyColor), // Change to the desired color
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.darkGreyColor),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.darkGreyColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.darkGreyColor),
        ),
        errorBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.redColor),
        ),

      ),
      scaffoldBackgroundColor: AppColor.blackColor,
    );
  }
}