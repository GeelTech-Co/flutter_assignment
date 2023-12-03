import 'package:assignment_test/features/fix/Person_model/person_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FixProvider extends ChangeNotifier {
  int? counter;
  Customer? person;

  static FixProvider of(BuildContext context) => Provider.of<FixProvider>(context);

  increaseCounter() {
    counter = (counter == null) ? 0 : counter! + 1;
    notifyListeners();
  }

  notify() {
    person = Customer(13, 180, true);
    person?.weight = person!.getIdealWeight();
    notifyListeners();
  }
}
