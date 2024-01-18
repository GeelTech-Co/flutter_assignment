import 'package:flutter/material.dart';

class FixCounterProvider extends ChangeNotifier {
  int? counter;

  increaseCounter() {
    counter ??= 0;
    counter = counter! + 1;
    notifyListeners();
  }
}
