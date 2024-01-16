import 'package:assignment_test/Providers/items_provider.dart';
import 'package:assignment_test/Screens/item_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'Providers/fix_provider.dart';
import 'Screens/home_screen.dart';
import 'Screens/login.dart';

void main() {
  runApp(ListenableProvider(
    create: (context) => FixProvider(),
    child: const MyApp(),
  ));
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage(
          title: 'Home Screen',
          key: Key('/'),
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return  LoginTab(
                key:const Key('login'));
          },
        ),
        GoRoute(
          path: 'items-details',
          builder: (BuildContext context, GoRouterState state) {
            return const ItemDetailsWidget(
                key:Key('items-details'));
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FixProvider>(
          create: (context) => FixProvider(),
        ),
        ChangeNotifierProvider<ItemsProvider>(
          create: (context) => ItemsProvider(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const MyHomePage(title: 'Potato Tech Flutter Assignment'),
      ),
    );
  }
}
