import 'package:assignment_test/cubit/item_cubit/item_cubit.dart';
import 'package:assignment_test/data/repositories/item_repo.dart';
import 'package:assignment_test/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/api/dio.dart';
import 'core/api/end_point.dart';
import 'core/cache_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();
  await DioHelper.init(EndPoints.kBaseUrl);
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
