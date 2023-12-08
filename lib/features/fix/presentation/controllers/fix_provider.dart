import 'package:flutter/material.dart';

import '../../../../model.dart';

class FixProvider extends ChangeNotifier {
  int counter = 0;

  num weight = 0;

  increaseCounter() {
    counter = counter + 1;
    notifyListeners();
  }

  calculateWeight(Person person){
    weight = person.getIdealWeight()!;
    notifyListeners();
  }
}
