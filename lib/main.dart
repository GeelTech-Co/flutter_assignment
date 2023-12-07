import 'package:assignment_test/config/routes/app_routes.dart';
import 'package:assignment_test/pages/fix_tab/bloc/fix_bloc.dart';
import 'package:assignment_test/pages/home_page/bloc/home_page_blocs.dart';
import 'package:assignment_test/pages/login_tab/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => HomePageBlocs(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => FixBlocs(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => LoginBlocs(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: router,
      ),
    );
  }
}
