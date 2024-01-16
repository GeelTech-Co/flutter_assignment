enum Gender {
  male,
  female,
}

abstract class Person {
  num age;
  num height;
  num? weight;
  Gender gender;

  Person(this.age, this.height, this.gender);

  num getIdealWeight() {
    if (gender == Gender.male) {
      return height / age * 10;
    } else {
      return height / age * 9;
    }
  }
}

class Persons extends Person {
  Persons(num age, num height, Gender gender) : super(age, height, gender);
}