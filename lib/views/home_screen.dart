import 'package:assignment_test/providers/tabs_provider.dart';
import 'package:assignment_test/shared/app_strings.dart';
import 'package:assignment_test/shared/shared_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TabsProvider>(
      builder: (ctx, model, child) {
        return DefaultTabController(
          initialIndex: model.tab,
          length: model.numOfTabs,
          child: Scaffold(
            appBar: AppBar(
              title: const Text(AppStrings.appTitle),
              bottom: TabBar(
                isScrollable: model.tabBarScrollable,
                tabs: [
                  defaultHomeTab(context: context, text: AppStrings.login),
                  defaultHomeTab(context: context, text: AppStrings.items),
                  defaultHomeTab(context: context, text: AppStrings.fix),

                ],
                onTap: (index) => model.changeTab(index),
              ),
            ),
            body: TabBarView(
              children: model.tabs,
            ),
          ),
        );
      },
    );
  }
}
