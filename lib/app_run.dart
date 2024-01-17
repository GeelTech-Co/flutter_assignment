import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:assignment_test/config/theme/app_themes.dart';
import 'package:assignment_test/config/routes/app_routes.dart';
import 'package:assignment_test/config/routes/routes_names.dart';
import 'package:assignment_test/config/injection_container.dart' as di;
import 'package:assignment_test/features/auth/presentation/providers/auth_provider.dart';
import 'package:assignment_test/features/product/presentation/providers/product_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => di.sl<AuthProvider>()),
        ChangeNotifierProvider(create: (context) => di.sl<ProductProvider>()),
      ],
      child: MaterialApp(
        title: 'Potato',
        theme: AppThemes.light,
        darkTheme: AppThemes.dark,
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesNames.signIn,
        navigatorKey: AppRoutes.navigatorKey,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
