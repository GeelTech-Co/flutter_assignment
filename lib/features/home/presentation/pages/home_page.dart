import 'package:flutter/material.dart';

import '../../../fix/presentation/pages/fix_tab.dart';
import '../../../authorization/presentation/pages/login_tab.dart';
import '../../../item/presentation/pages/items_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Assignment'),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: const Tab(
                  child: Text('Login'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: const Tab(
                  child: Text('Items'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: const Tab(
                  child: Text('Fix'),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const LoginTab(),
            const ItemsTab(),
             FixTab(),
          ],
        )
      ),
    );
  }
}