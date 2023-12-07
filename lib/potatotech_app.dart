import 'package:assignment_test/features/item/domain/usecases/item.dart';
import 'package:assignment_test/features/item/presentation/controller/cubit/item_cubit.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';
import 'core/utils/values_manger.dart';
import 'features/authentication/login/domain/usecases/login.dart';
import 'features/authentication/login/presentation/controller/login/login_cubit.dart';
import 'features/authentication/login/presentation/pages/login.dart';
import 'features/authentication/login/presentation/controller/fix/presentation/fix.dart';
import 'features/item/presentation/pages/items.dart';

class PotatoTechApp extends StatelessWidget {
  const PotatoTechApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(AppSize.s414, AppSize.s896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          builder: BotToastInit(),
          debugShowCheckedModeBanner: false,
          navigatorObservers: [BotToastNavigatorObserver()],
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(title: 'Potato Tech Flutter Assignment'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int tab = 0;

  Widget _tabBars(int index) {
    switch (index) {
      case 0:
        initLoginModule();
        return BlocProvider(
          create: (context) => LoginCubit(loginUseCase: getIt<LoginUseCase>()),
          child: const LoginTab(),
        );
      case 1:
        return const ItemsTab();
      default:
        return FixTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: const Tab(
                  child: Text('Login'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: const Tab(
                  child: Text('Items'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: const Tab(
                  child: Text('Fix'),
                ),
              ),
            ],
            onTap: (v) {
              setState(() {
                tab = v;
              });
            },
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBarView(
              children: [
                BlocProvider(
                  create: (context) =>
                      LoginCubit(loginUseCase: getIt<LoginUseCase>()),
                  child: const LoginTab(),
                ),
                BlocProvider(
                  create: (context) =>
                      ItemCubit(itemUseCase: getIt<ItemUseCase>()),
                  child: const ItemsTab(),
                ),
                FixTab(),
              ],
            )),
      ),
    );
  }
}
