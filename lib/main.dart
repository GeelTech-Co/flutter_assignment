import 'package:assignment_test/cubit/main_cubit.dart';
import 'package:assignment_test/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'utils/bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit()..fetchItems()..fetchItemDetail(1),
      child: BlocConsumer<MainCubit, MainState>(listener: (context, state) {}
          , builder: (context, state) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          home: const MainScreen(),
        );
      }),
    );
  }
}
