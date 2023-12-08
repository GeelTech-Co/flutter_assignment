import 'package:assignment_test/modules/fix/views/fix_screen.dart';
import 'package:assignment_test/modules/items/views/items_screen.dart';
import 'package:assignment_test/modules/login/views/login_screen.dart';
import 'package:assignment_test/modules/start/bloc/navigation_bloc.dart';
import 'package:assignment_test/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => NavigationBloc(),
      child: DefaultTabController(
        length: 3,
        child: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
    final NavigationBloc navigationBloc = context.read<NavigationBloc>();
            return SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: Text(StringsManager.startAppBarTitle),
                  bottom: TabBar(
                    tabs: [
                      Tab(icon: const Icon(Icons.login), text: StringsManager.login),
                      Tab(icon: const Icon(Icons.view_list), text: StringsManager.items),
                      Tab(icon: const Icon(Icons.auto_fix_high), text: StringsManager.fix),
                    ],
                    onTap: (index) {
                      if (index == 0) {
                        navigationBloc.add(NavigateToLogin());
                      } else if (index == 1) {
                        navigationBloc.add(NavigateToItems());
                      } else if (index == 2) {
                        navigationBloc.add(NavigateToFix());
                      }
                    },
                  ),
                ),
                body: const TabBarView(
                  children: [
                    LoginScreen(),
                    ItemsScreen(),
                    FixScreen(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
