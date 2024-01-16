import 'package:assignment_test/Providers/auth_provider.dart';
import 'package:assignment_test/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/Responses/HttpResponse.dart';
import 'fix.dart';
import 'items.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int tab = 0;

 List<Widget> tabs =[    LoginTab(),
   const ItemsTab(),
   FixTab(),];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          leading:  Padding(
            padding: const EdgeInsets.only(top: 20,left: 10),
            child: tab==0?SizedBox(): GestureDetector(onTap: (){
              logout(context);
            },child: Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)),
          ),
          bottom: TabBar(
            isScrollable: false,
            enableFeedback: true,
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
        body: TabBarView(
          children: tabs,
        ),
      ),
    );
  }
  void logout(context) async {

    HttpResponse response =
    await Provider.of<AuthController>(context, listen: false).logout();

    if (response.responseCode == 200) {
     context.go('/login');
    } else {
      context.go('/login');

    }
  }
}