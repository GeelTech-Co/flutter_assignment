import 'package:assignment_test/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        routerConfig: router,
        theme: AppTheme.lightThemeData(),
        darkTheme: AppTheme.darkThemeData(),
        themeMode: ThemeMode.light,
        title: 'Potato Tech Flutter Assignment',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
