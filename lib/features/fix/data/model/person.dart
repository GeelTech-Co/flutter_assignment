import '../../../../core/helpers/enum.dart';

abstract class Person {
  num age;
  num height;
  num? weight;
  Gender gender;

  Person({required this.age, required this.height, required this.gender});

  num getIdealWeight();
}

class Persons extends Person {
  Persons({required super.age, required super.height, required super.gender});


  @override
  num getIdealWeight() {
    if (Gender.male == gender) {
      weight = height / (age * 10);
      return weight!;
    } else {
      weight = height / (age * 9);
      return weight!;
    }
  }
}



