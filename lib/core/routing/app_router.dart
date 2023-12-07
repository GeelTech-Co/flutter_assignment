import 'package:assignment_test/core/routing/routes.dart';
import 'package:assignment_test/features/item/presentation/pages/item_details.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../navigation.dart';

class Routes {
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: RoutesName.home,
        builder: (BuildContext context, GoRouterState state) {
          return const Home(
            title: 'Potato Tech Flutter Assignment',
          );
        },
        routes: <RouteBase>[
          GoRoute(
            path: RoutesName.itemDetailsPage,
            builder: (BuildContext context, GoRouterState state) {
              return const ItemDetailsWidget();
            },
          ),
        ],
      ),
    ],
  );
}
