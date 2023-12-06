import 'package:assignment_test/models/person_model.dart';

import 'package:flutter/material.dart';



class FixTabProvider extends ChangeNotifier {
  Person? person;

  int? counter=0;

  increaseCounter() {
    counter = counter! + 1;
    notifyListeners();
  }

  calculateWeight(){
    person = Male(25, 180);
   person?.getIdealWeight();
   notifyListeners();
  }



}

