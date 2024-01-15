import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterNotifier = ChangeNotifierProvider<FixProvider>((ref) {
  return FixProvider();
});

class FixProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  increaseCounter() {
    _counter = _counter + 1;
    notifyListeners();
  }
}
