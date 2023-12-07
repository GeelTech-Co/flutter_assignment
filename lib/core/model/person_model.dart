
abstract class Person {
  num age;
  num height;
  num? weight;
  bool male;
  Person(this.age, this.height,this.male);
  num getIdealWeight(double height, int age, bool man);
}

class IdealWeight extends Person {
  IdealWeight(super.age, super.height, super.male);

  @override
  num getIdealWeight(double height, int age, bool man) {
    if (male) {
      return height / age * 10;
    } else {
      return height / age * 9;
    }
  }
}