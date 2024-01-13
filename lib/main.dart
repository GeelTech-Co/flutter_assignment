import 'package:assignment_test/cubit/item_cubit/item_cubit.dart';
import 'package:assignment_test/data/repositories/item_repo.dart';
import 'package:assignment_test/view/home_screen.dart';
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
          create: (_) => ItemScreenCubit(ItemRepoImpl()),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(title: 'Potato Tech Flutter Assignment'),
      ),
    );
  }
}
