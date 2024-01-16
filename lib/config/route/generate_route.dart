import 'package:assignment_test/config/route/app_routes.dart';
import 'package:assignment_test/core/components/item_deatils.dart';
import 'package:assignment_test/feature/home/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GenerateRoute {
  static GoRouter getRoutes() => GoRouter(
        routes: <RouteBase>[
          GoRoute(
            path: AppRoutes.home,
            builder: (BuildContext context, GoRouterState state) {
              return const Home(
                title: 'Potato Tech Flutter Assignment',
              );
            },
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.itemDetails,
                builder: (BuildContext context, GoRouterState state) {
                  return ItemDetailsWidget(
                    idItem: (state.extra as Map<String, String>)['idItem']!,
                  );
                },
              ),
            ],
          ),
        ],
      );
}
