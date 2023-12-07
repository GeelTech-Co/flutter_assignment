import 'package:flutter/material.dart';
import '../modules/fix/fix.dart';
import '../modules/items/items.dart';
import '../modules/login/login.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: const Tab(
                  text: 'Login',
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: const Tab(
                  text: 'Items',
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: const Tab(
                  text: 'Fix',
                ),
              ),
            ],
          ),
          title: const Text('Potato Tech Flutter Assignment'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: TabBarView(
            children: [
              LoginTab(),
              ItemsTab(),
              FixTab(),
            ],
          ),
        ),
      ),
    );
  }
}
