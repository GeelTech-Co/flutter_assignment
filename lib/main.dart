import 'package:assignment_test/core/utils/router_manager.dart';
import 'package:assignment_test/features/login/presentation/controller/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'core/utils/bloc_observe.dart';
import 'core/utils/dependancy_injection.dart';
import 'features/items/presentation/controllers/get_items_cubit/get_items_cubit.dart';

Future<void> main() async {
  Bloc.observer = MyBlocObserver();
  Provider.debugCheckInvalidValueType = null;
  await initAppModule();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> getItInstance<LoginCubit>()),
        BlocProvider(create: (BuildContext context) => getItInstance<GetItemsCubit>()..getItems()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
          primarySwatch: Colors.blue,
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}


