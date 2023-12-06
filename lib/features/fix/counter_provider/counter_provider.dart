import 'package:flutter/material.dart';

class FixProvider extends ChangeNotifier {
  int? counter = 0;

  getCounter() => counter;
  setCounter(int counter) => counter = counter;

  increaseCounter() {
    counter = counter! + 1;
    notifyListeners();
  }
}
