import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:assignment_test/config/routes/routes_names.dart';
import 'package:assignment_test/features/product/presentation/screens/layout.dart';
import 'package:assignment_test/features/auth/presentation/screens/sing_in_screen.dart';
import 'package:assignment_test/features/product/presentation/screens/product_details.dart';

class AppRoutes {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static cupertinoRoute(Widget screen, {RouteSettings? settings}) =>
      CupertinoPageRoute(settings: settings, builder: (_) => screen);

  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.initialRoute:
        return cupertinoRoute(const Scaffold(), settings: settings);
      // Auth Screens
      case RoutesNames.signIn:
        return cupertinoRoute(const SignInScreen(), settings: settings);

      // Items Screens
      case RoutesNames.layout:
        return cupertinoRoute(const LayoutScreen(), settings: settings);
      case RoutesNames.productDetails:
        return cupertinoRoute(const  ProductDetailsView(), settings: settings);
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return CupertinoPageRoute(
      builder: ((context) =>
          const Scaffold(body: Center(child: Text(AppStrings.noRouteFound)))),
    );
  }
}

Future<void> goTo(routesNames, {Object? args}) async {
  AppRoutes.navigatorKey.currentState!.pushNamed(routesNames, arguments: args);
}

Future<void> back() async => AppRoutes.navigatorKey.currentState!.pop();

Future<void> goAndFinish(routesNames, {Object? args}) async {
  AppRoutes.navigatorKey.currentState!
      .pushNamedAndRemoveUntil(routesNames, arguments: args, (route) => false);
}

Future<void> popAndPush(routesNames, {Object? args}) async {
  AppRoutes.navigatorKey.currentState!
      .popAndPushNamed(routesNames, arguments: args);
}
