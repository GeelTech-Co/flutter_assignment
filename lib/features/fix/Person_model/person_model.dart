abstract class Person {
  num age;
  num height;
  bool male;
  num? weight;
  Person(
    this.age,
    this.height,
    this.male,
  );

  num getIdealWeight();
}

class Customer extends Person {
  Customer(super.age, super.height, super.male);

  @override
  num getIdealWeight() {
    if (male) {
      return height / age * 10;
    } else {
      return height / age * 9;
    }
  }
}
