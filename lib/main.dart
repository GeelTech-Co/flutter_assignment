import 'package:assignment_test/config/route/generate_route.dart';
import 'package:assignment_test/data/local/hive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => HiveStorg()..initHive(),
      lazy: false,
      child: MaterialApp.router(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: GenerateRoute.getRoutes(),
      ),
    );
  }
}
