import 'package:assignment_test/core/config/route/go_route.dart';
import 'package:assignment_test/features/fix/presentation/providers/fix_counter_provider.dart';
import 'package:assignment_test/features/home/presentation/pages/home_page.dart';
import 'package:assignment_test/features/authorization/presentation/providers/auth_provider.dart';
import 'package:assignment_test/features/item/presentation/providers/item_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/fix/presentation/providers/fix_weight_provider.dart';
import 'features/item/presentation/providers/active_item_provider.dart';
import 'injection_container.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(create: (_) => di<AuthProvider>()),
        ChangeNotifierProvider<ItemProvider>(create: (_) => di<ItemProvider>()),
        ChangeNotifierProvider<ActiveItemProvider>(
            create: (_) => di<ActiveItemProvider>()),
        ChangeNotifierProvider<FixCounterProvider>(
            create: (context) => FixCounterProvider()),
        ChangeNotifierProvider<FixWeightProvider>(
            create: (context) => FixWeightProvider()),
      ],
      child: MaterialApp.router(
        routerConfig:  AppGoRoute.route,
        title: 'Flutter Assignment',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
