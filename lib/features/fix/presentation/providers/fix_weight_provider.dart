import 'package:assignment_test/features/fix/data/model/model.dart';
import 'package:flutter/material.dart';

class FixWeightProvider extends ChangeNotifier {
  double? weight;

  void getIdealWeight(Persons persons) {
    weight = persons.getIdealWeight();
    notifyListeners();
  }
}
