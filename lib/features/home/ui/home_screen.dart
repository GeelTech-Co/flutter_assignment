import 'package:assignment_test/core/di/dependency_injection.dart';
import 'package:assignment_test/features/fix/logic/fix_bloc.dart';
import 'package:assignment_test/features/item/logic/item_bloc.dart';
import 'package:assignment_test/features/login/logic/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/app_color.dart';
import '../../fix/ui/fix.dart';
import '../../item/ui/items.dart';
import '../../login/ui/login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text(title),
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
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: AppColor.whiteColor,
              indicatorWeight: 3.0,
              onTap: (v) {},
            ),
          ),
          body: TabBarView(children: [
            BlocProvider(
              create: (context) => getIt<LoginBloc>(),
              child: const LoginTab(),
            ),
            BlocProvider(
              create: (context) => getIt<ItemBloc>(),
              child: const ItemsTab(),
            ),
            BlocProvider(
              create: (context) => getIt<FixBloc>(),
              child: const FixTab(),
            ),
          ])),
    );
  }
}
