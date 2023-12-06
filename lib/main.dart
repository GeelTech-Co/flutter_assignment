import 'package:assignment_test/features/home/home.dart';
import 'package:assignment_test/features/items/controlles/items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
void main() {
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider<ItemsCubit>(
        lazy: false,
        create: (BuildContext context) => ItemsCubit()..fetchItems(),
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
