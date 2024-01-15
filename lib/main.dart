import 'package:assignment_test/router/router.dart';
import 'package:assignment_test/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  await serviceLocater();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      routerConfig: AppRouter.router,
    );
  }
}
