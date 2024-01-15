import 'package:assignment_test/models/person.dart';
import 'package:assignment_test/utils/enums/gender_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final weightNotifier = ChangeNotifierProvider<WeightCalculation>((ref) {
  return WeightCalculation();
});

class WeightCalculation extends ChangeNotifier {
  Person? _person;

  num? get weight => _person?.weight;

  calculateWeight({
    required num height,
    required num age,
    required Gender gender,
  }) {
    _person = Person(
      age: age,
      height: height,
      gender: gender,
    );
    _person!.getIdealWeight();
    notifyListeners();
  }
}
