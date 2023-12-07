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
          path: 'details/:id1',
          name: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return ItemDetails(
              id: int.parse(state.pathParameters['id1'] ?? '0'),
            );
          },
        ),
      ],
    ),
  ],
);
