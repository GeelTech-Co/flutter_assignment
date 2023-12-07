import 'package:flutter/material.dart';

import 'widgets/fix_tab.dart';
import 'widgets/items_tab.dart';
import 'widgets/login_tab.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Potato Tech Flutter Assignment'),
          bottom: TabBar(
            isScrollable: true,
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
          ),
        ),
        body:  TabBarView(
          children: [
            LoginTab(),
            const ItemsTab(),
            const FixTab(),
          ],
        ),
      ),
    );
  }
}