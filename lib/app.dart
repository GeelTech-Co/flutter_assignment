import 'package:assignment_test/config/routes/app_routs.dart';
import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      showSemanticsDebugger: false,
      debugShowMaterialGrid: false,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: 'home layout',
      onGenerateRoute: (settings) => AppRoutes.onGenerate(settings),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
