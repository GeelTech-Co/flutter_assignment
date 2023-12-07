import 'package:assignment_test/features/homeLayOut/presentation/pages/home_layout.dart';
import 'package:assignment_test/features/homeLayOut/presentation/pages/item_details.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeLayOut(title: 'Potato Tech Flutter Assignment');
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details/:id',
          name: 'id',
          builder: (BuildContext context, GoRouterState state) {
            int id = state.extra as int;

            return ItemDetails(
              id: id,
            );
          },
        ),
      ],
    ),
  ],
);
