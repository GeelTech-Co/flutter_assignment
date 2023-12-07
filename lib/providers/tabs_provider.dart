import 'package:assignment_test/screens/tabs/fix_tab.dart';
import 'package:assignment_test/screens/tabs/items_tab.dart';
import 'package:flutter/material.dart';

import '../screens/tabs/login_tab.dart';

class TabsProvider extends ChangeNotifier {

  int numOfTabs = 3;
  int tab = 0;

  bool tabBarScrollable = true;

  List<Widget> tabs = [
    const LoginTab(),
  const ItemsTab(),
    const FixTab(),
  ];


  void changeTab(int index){
    tab = index;
    // print(tab);
    notifyListeners();
  }


  Widget tabBars(int index) {
    switch (index) {
      case 0:
        return const LoginTab();
      case 1:
        return const ItemsTab();
      case 2:
        return const FixTab();
      default:
        return const LoginTab();
    }
  }


}