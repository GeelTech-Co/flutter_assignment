
import 'package:assignment_test/Features/fixpage/presentation/views/fix.dart';
import 'package:assignment_test/Features/itemspage/presentation/views/items.dart';
import 'package:assignment_test/Features/loginpage/presentation/views/login.dart';
import 'package:assignment_test/core/utils/approute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Features/fixpage/presentation/manger/fix_bloc/fix_bloc.dart';
import 'Features/itemspage/manger/items_bloc/items_bloc.dart';
import 'Features/loginpage/presentation/manger/login_bloc/login_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LogInBloc()),
        BlocProvider(create: (context) => ItemsBloc()),
        BlocProvider(create: (context) => FixBloc()),

      ], 
      child: MaterialApp.router(
        title: 'Potato Tech Flutter Assignment',
        routeInformationParser: AppRouter.router.routeInformationParser,
        routerDelegate: AppRouter.router.routerDelegate,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          
        )
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  late PageController _pageController;
  late TabController tabController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    _pageController = PageController(initialPage: currentPage);
  }
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            controller: tabController,
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
            onTap: (v) {
              setState(() {
                currentPage = v;
                tabController.animateTo(currentPage);
                _pageController.animateToPage(
                  v,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              });
            },
          ),
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              currentPage = page;
            });
          },
          children: [
            LoginTab(),
            ItemsTab(),
            FixTab(),
          ],
        ),
      ),
    );
  }
}
