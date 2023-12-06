import 'package:assignment_test/core/models/person.dart';

class FemaleModel extends PersonModel {
  FemaleModel(super.age, super.height);

  @override
  num getIdealWeight() {
    weight = height / age * 10;
    return weight ?? 0;
  }
}
