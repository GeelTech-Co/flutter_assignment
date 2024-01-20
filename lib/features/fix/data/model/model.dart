enum GenderEnum {
  male,
  female,
}

abstract class Person {
  num age;
  num height;
  num? weight;
  GenderEnum gender;

  Person(this.age, this.height, this.gender);

  double getIdealWeight() {
    return double.parse((height / age * (gender == GenderEnum.male ? 10 : 9))
        .toStringAsFixed(2));
  }
}

class Persons extends Person {
  Persons(num age, num height, GenderEnum gender) : super(age, height, gender);
}
