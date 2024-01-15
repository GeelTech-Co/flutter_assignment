import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    required this.navigationShell,
    required this.controller,
  });

  final StatefulNavigationShell navigationShell;
  final TabController controller;

  _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Potato Tech Flutter Assignment'),
      bottom: TabBar(
        controller: controller,
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
        onTap: _goBranch,
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + kTextTabBarHeight);
}
