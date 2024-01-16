import 'package:assignment_test/features/item/ui/widgets/item_details_widget.dart';
import 'package:flutter/material.dart';
import '../../features/home/ui/home_screen.dart';
import 'routes.dart';
import 'package:go_router/go_router.dart';


class AppRouter {
  static GoRouter getRoutes() => GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: Routes.homeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen(
            title: 'Potato Tech Flutter Assignment',
          );
        },
        routes: <RouteBase>[
          GoRoute(
            path: Routes.itemDetailsScreen,
            builder: (BuildContext context, GoRouterState state) {
              return const ItemDetailsWidget();
            },
          ),
        ],
      ),
    ],
  );
}
