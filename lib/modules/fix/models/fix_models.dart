abstract class Person {
  num age;
  num height;
  num? weight;
  Person(this.age, this.height);

  num getIdealWeight();
}

class Male extends Person {
  Male(num age, num height) : super(age, height);

  @override
  num getIdealWeight() {
    return height / age * 10;
  }
}

class Female extends Person {
  Female(num age, num height) : super(age, height);

  @override
  num getIdealWeight() {
    return height / age * 9;
  }
}