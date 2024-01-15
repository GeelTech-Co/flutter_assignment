import 'package:assignment_test/utils/enums/gender_enum.dart';

class Person {
  num age;
  num height;
  num? weight;
  Gender gender;
  Person({
    required this.age,
    required this.height,
    required this.gender,
  });

  void getIdealWeight() {
    weight = height / age * (gender == Gender.male ? 10 : 9);
  }
}
