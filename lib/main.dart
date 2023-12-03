import 'package:assignment_test/core/api/remote/dio_helper.dart';
import 'package:assignment_test/features/fix/presentation/provider/fix_provider.dart';
import 'package:assignment_test/features/items/presentation/bloc/products_cubit.dart';
import 'package:assignment_test/features/login/presentation/bloc/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'features/fix/presentation/fix.dart';
import 'features/items/presentation/products.dart';
import 'features/login/presentation/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DioHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => LoginCubit(),
            ),
            BlocProvider(
              create: (context) => ProductCubit(),
            ),
          ],
          child: MultiProvider(providers: [
            ChangeNotifierProvider(create: (_) => FixProvider()),
          ], child: const MyHomePage(title: 'Potato Tech Flutter Assignment'))),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  int tab = 0;

  /*Widget _tabBars(int index) {
    switch (index) {
      case 0:
        return LoginTab();
      case 1:
        return const ItemsTab();
      default:
        return FixTab();
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
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
            onTap: (v) {
              setState(() {
                tab = v;
              });
            },
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: TabBarView(
            children: [
              LoginTab(),
              ProductsTab(),
              FixTab(),
            ],
          ),
        ),
      ),
    );
  }
}
