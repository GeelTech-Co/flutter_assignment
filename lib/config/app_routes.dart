import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/potato/presentation/pages/home_page.dart';
import '../features/potato/presentation/pages/item_details_page.dart';

class Routes {
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'itemDetailsPage/:id',
            name: 'itemDetailsPage',
            builder: (BuildContext context, GoRouterState state) {
              return ItemDetailsPage(
                id: int.parse(state.pathParameters['id']!),
              );
            },
          ),
        ],
      ),
    ],
  );
}
