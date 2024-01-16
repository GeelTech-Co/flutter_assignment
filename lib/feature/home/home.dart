import 'package:assignment_test/feature/login/login.dart';
import 'package:assignment_test/feature/fix/fix.dart';
import 'package:assignment_test/feature/items/items.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late final TabController tabController;
  late final PageController pageController;
  @override
  void initState() {
    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,
    );
    pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          isScrollable: true,
          controller: tabController,
          tabs: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.20,
              child: const Tab(
                child: Text('Login'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.20,
              child: const Tab(
                child: Text('Items'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.20,
              child: const Tab(
                child: Text('Fix'),
              ),
            ),
          ],
          onTap: (value) {
            pageController.jumpToPage(value);
          },
        ),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: pageController,
        onPageChanged: (value) {
          tabController.animateTo(value);
        },
        children: const [
          LoginTab(),
          ItemsTab(),
          FixTab(),
        ],
      ),
    );
  }
}
