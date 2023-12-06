import 'package:assignment_test/features/fix/fix.dart';
import 'package:assignment_test/features/items/items.dart';
import 'package:assignment_test/features/login/login.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Potato Tech Flutter Assignment'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Login'),
              Tab(text: 'Items'),
              Tab(text: 'Fix'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LoginTab(),
            const ItemsTab(),
            FixTab(),
          ],
        ),
      ),
    );
  }
}
