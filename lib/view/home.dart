import 'package:assignment_test/view/login.dart';
import 'package:flutter/material.dart';

import 'fix.dart';
import 'items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tab = 0;

  Widget _tabBars(int index) {
    switch (index) {
      case 0:
        return LoginTab();
      case 1:
        return const ItemsTab();
      default:
        return FixTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            isScrollable: false,
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
            enableFeedback: true,
            onTap: (v) {
              setState(() {
                tab = v;
              });
            },
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