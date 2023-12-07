import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/utils/values_manger.dart';
import 'navigation.dart';

class PotatoTechApp extends StatelessWidget {
  const PotatoTechApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(AppSize.s414, AppSize.s896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          builder: BotToastInit(),
          debugShowCheckedModeBanner: false,
          navigatorObservers: [BotToastNavigatorObserver()],
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Home(title: 'Potato Tech Flutter Assignment'),
        );
      },
    );
  }
}
