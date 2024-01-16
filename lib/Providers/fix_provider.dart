import 'package:flutter/cupertino.dart';

import '../Models/model.dart';

class FixProvider extends ChangeNotifier {
  int? counter = 0;
  double? idealWeight = 0;

  void increaseCounter() {
    counter = counter! + 1;
    notifyListeners();
  }

  void getIdealWeight(PersonsWeight personsWeight) {
    if (personsWeight.gender == Gender.male) {
      idealWeight = personsWeight.height / personsWeight.age * 10;
      notifyListeners();
    } else {
      idealWeight = personsWeight.height / personsWeight.age;
      notifyListeners();
    }
  }
}