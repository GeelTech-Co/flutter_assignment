import 'package:assignment_test/resources/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors_manager.dart';
import 'styles_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main colors
    primaryColor: ColorsManager.redPrimary,
    scaffoldBackgroundColor: ColorsManager.blackBg,
    // useMaterial3: true,
    //app bar theme
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorsManager.white,
          statusBarIconBrightness: Brightness.dark),
      color: ColorsManager.blackBg,
      // shadowColor: ColorsManager.lightPrimary,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: getRegularStyle(color: ColorsManager.white,fontSize: 14)
    ),
    ///tab bar theme
    tabBarTheme: const TabBarTheme(
        labelColor: ColorsManager.white,
      unselectedLabelColor: ColorsManager.white70,
        indicatorColor: Colors.white,
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 2, color: ColorsManager.white,),),

    ),
    //button theme
    buttonTheme: const ButtonThemeData(
      disabledColor: ColorsManager.disabledPrimaryRedColor,
      buttonColor: ColorsManager.redPrimary,
      splashColor: ColorsManager.white,
    ),
    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: getMediumStyle(color: ColorsManager.white, fontSize: 20),
          backgroundColor: ColorsManager.redPrimary,
          foregroundColor: ColorsManager.white,
          disabledBackgroundColor: ColorsManager.disabledPrimaryRedColor,
          disabledForegroundColor: ColorsManager.white,
          fixedSize: const Size(double.infinity,64 ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0))),
    ),
    //text theme
    textTheme: TextTheme(
      displayLarge:
      getBoldStyle(color: ColorsManager.white, fontSize: FontSize.s22),
      labelLarge: getBoldStyle(
          color: ColorsManager.white, fontSize: FontSize.s18),
      bodyLarge: getBoldStyle(
        color: ColorsManager.white, fontSize: FontSize.s14,),
      headlineLarge: getBoldStyle(
        color: ColorsManager.white, fontSize: FontSize.s12,),
      displayMedium: getMediumStyle(
        color: ColorsManager.white, fontSize: FontSize.s14,),
      displaySmall: getRegularStyle(
          color: ColorsManager.white, fontSize: FontSize.s18),
      bodySmall: getRegularStyle(
          color: ColorsManager.white, fontSize: FontSize.s14),
    ),

    // input decoration theme(text form field)
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: getRegularStyle(color: ColorsManager.white70,fontSize: 15),
        suffixIconColor: ColorsManager.white,

        contentPadding:
        const EdgeInsets.all(16),
        errorStyle: getRegularStyle(color: ColorsManager.errorColor,fontSize: 15),
        disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.borderTextFieldDark, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(4.0))),
        focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.borderTextFieldDark, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(4.0))),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.errorColor, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(4.0))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.borderTextFieldDark, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(4.0))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.borderTextFieldDark, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(4.0)))),
  );
}
