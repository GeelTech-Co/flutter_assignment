import 'package:assignment_test/core/models/person.dart';

class MaleModel extends PersonModel {
  MaleModel(super.age, super.height);

  @override
  num getIdealWeight() {
    weight = weight = height / age * 9;
    return weight ?? 0;
  }
}
