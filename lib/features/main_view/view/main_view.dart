import 'package:flutter/material.dart';

import '../../fix/presentation/views/fix_tab.dart';
import '../../items/presentation/views/items_tab.dart';
import '../../login/presentation/views/login_tab.dart';
import 'widgets/tab_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            TabItem(title: 'Login',),
            TabItem(title: 'Items',),
            TabItem(title: 'Fix',),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBarView(
            controller: _tabController,
            children: const [
              LoginTab(),
              ItemsTab(),
              FixTab()
            ],
          ),
        ),
      ),
    );
  }
}