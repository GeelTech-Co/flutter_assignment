import 'package:assignment_test/auth/item_cubit/item_cubit.dart';
import 'package:assignment_test/data/repos/item_repo.dart';
import 'package:assignment_test/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/api/dio_api.dart';
import 'core/api/api_end_point.dart';
import 'core/cache_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();
  DioHelper.init(EndPoints.kBaseUrl);
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