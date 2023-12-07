import 'package:assignment_test/core/utils/strings_manger.dart';
import 'package:assignment_test/features/authentication/login/presentation/controller/fix/fix_cubit.dart';
import 'package:assignment_test/features/item/presentation/controller/cubit/item_with_id/item_with_id_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/dependency_injection.dart';
import 'features/authentication/login/domain/usecases/login.dart';
import 'features/authentication/login/presentation/controller/fix/presentation/fix.dart';
import 'features/authentication/login/presentation/controller/login/login_cubit.dart';
import 'features/authentication/login/presentation/pages/login.dart';
import 'features/item/domain/usecases/item.dart';
import 'features/item/domain/usecases/item_with_id.dart';
import 'features/item/presentation/controller/cubit/item/item_cubit.dart';
import 'features/item/presentation/pages/items.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tab = 0;

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
                  child: Text(AppString.login),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: const Tab(
                  child: Text(AppString.items),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: const Tab(
                  child: Text(AppString.fix),
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
                  create: (context) => ItemWithIdCubit(
                      itemWithIdUseCase: getIt<ItemWithIdUseCase>()),
                  child: BlocProvider(
                    create: (context) =>
                        ItemCubit(itemUseCase: getIt<ItemUseCase>()),
                    child: const ItemsTab(),
                  ),
                ),
                BlocProvider(
                  create: (context) => FixCubit(),
                  child: FixTab(),
                ),
              ],
            )),
      ),
    );
  }
}
