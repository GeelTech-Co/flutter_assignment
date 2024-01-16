import 'package:assignment_test/core/di/dependency_injection.dart';
import 'package:assignment_test/features/fix/logic/fix_bloc.dart';
import 'package:assignment_test/features/item/logic/item_bloc.dart';
import 'package:assignment_test/features/login/logic/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../fix/ui/fix.dart';
import '../../item/ui/items.dart';
import '../../login/ui/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
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
        children:  [
          BlocProvider(
            create: (context) => getIt<LoginBloc>(),
            child: const LoginTab(),
          ),
          BlocProvider(
            create: (context) => getIt<ItemBloc>(),
            child: const ItemsTab(),
          ),
          BlocProvider(
            create: (context) => getIt<FixBloc>(),
            child: const FixTab(),
          ),
        ],
      ),
    );
  }
}
