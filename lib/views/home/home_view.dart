import 'package:assignment_test/views/fix_tab/fix.dart';
import 'package:assignment_test/views/home/widgets/main_app_bar.dart';
import 'package:assignment_test/views/items_tab/items_view.dart';
import 'package:assignment_test/views/login/login_tab.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
    required this.navigationShell,
  });
  final StatefulNavigationShell navigationShell;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController _cont;

  @override
  void initState() {
    super.initState();
    _cont = TabController(length: 3, vsync: this);
    _cont.addListener(() {
      widget.navigationShell.goBranch(_cont.index);
    });
  }

  @override
  void dispose() {
    _cont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        navigationShell: widget.navigationShell,
        controller: _cont,
      ),
      body: TabBarView(
        controller: _cont,
        children: const [
          LoginTab(),
          ItemsTab(),
          FixTab(),
        ],
      ),
    );
  }
}
