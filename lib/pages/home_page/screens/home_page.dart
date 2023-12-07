import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:assignment_test/pages/fix_tab/screens/fix.dart';
import 'package:assignment_test/pages/home_page/bloc/home_page_blocs.dart';
import 'package:assignment_test/pages/home_page/bloc/home_page_events.dart';
import 'package:assignment_test/pages/home_page/bloc/home_page_states.dart';
import 'package:assignment_test/pages/home_page/widgets/home_page_widgets.dart';
import 'package:assignment_test/pages/items_tab/screens/all_items.dart';
import 'package:assignment_test/pages/login_tab/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _tabBars(int index) {
    switch (index) {
      case 0:
        return const LoginTab();
      case 1:
        return const ItemsTab();
      default:
        return const FixTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBlocs, HomePageState>(builder: (context, state) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(AppStrings.appName),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                tabStyle('Login', context),
                tabStyle('Items', context),
                tabStyle('Fix', context),
              ],
              onTap: (v) {
                state.page = v;
                BlocProvider.of<HomePageBlocs>(context).add(HomePageEvent());
              },
              indicatorColor: Colors.blueAccent,
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _tabBars(state.page),
            ),
          ),
        ),
      );
    });
  }
}
