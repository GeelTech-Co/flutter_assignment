import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:assignment_test/features/potato/presentation/pages/fix_page.dart';
import 'package:assignment_test/features/potato/presentation/pages/items_page.dart';
import 'package:assignment_test/features/potato/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../widget/tap_tem.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
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
                TapItem(
                  name: AppStrings.login,
                ),
                TapItem(
                  name: AppStrings.item,
                ),
                TapItem(
                  name: AppStrings.fix,
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              LoginTab(),
              ItemsTabPage(),
              FixTabPage(),
            ],
          ),
        ));
  }
}


