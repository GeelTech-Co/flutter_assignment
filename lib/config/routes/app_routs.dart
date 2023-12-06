import 'package:assignment_test/features/homeLayOut/presentation/pages/home_layout.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashScreen = '/';
  static const String homeLayOut = 'home layout';
}

class AppRoutes {
  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homeLayOut:
        return MaterialPageRoute(
                //TODO title

          builder: (context) =>  const HomeLayOut(title: 'xxx'),
        );
      
      default:
        {
          return MaterialPageRoute(
            builder: (context) => unDefineRoute(),
          );
        }
    }
  }

  static Widget unDefineRoute() => const Scaffold(
        body: Center(
          child: Text('unDefinedRoute'),
        ),
      );
}
