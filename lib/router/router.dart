import 'package:assignment_test/router/routes.dart';
import 'package:assignment_test/views/fix_tab/fix.dart';
import 'package:assignment_test/views/home/home_view.dart';
import 'package:assignment_test/views/items_tab/items_view.dart';
import 'package:assignment_test/views/logged_in/logged_in_view.dart';
import 'package:assignment_test/views/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final _rootKey = GlobalKey<NavigatorState>();
  static final _loginTab = GlobalKey<NavigatorState>();
  static final _itemsTab = GlobalKey<NavigatorState>();
  static final _fixTab = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: _rootKey,
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) {
          return const SplashView();
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomeView(
            navigationShell: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _loginTab,
            routes: [
              GoRoute(
                path: AppRoutes.home,
                builder: (context, state) {
                  return const LoggedInView();
                },
              )
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _itemsTab,
            routes: [
              GoRoute(
                path: AppRoutes.itemsTab,
                builder: (context, state) {
                  return const ItemsTab();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _fixTab,
            routes: [
              GoRoute(
                path: AppRoutes.fixTab,
                builder: (context, state) {
                  return const FixTab();
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: AppRoutes.itemDetails,
        builder: (context, state) {
          return const ItemDetailsWidget();
        },
      )
    ],
  );
}
