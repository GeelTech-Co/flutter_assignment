abstract class Person {
  num age;
  num height;
  num? weight;
  num gander;
  Person(this.age, this.height, this.gander);

  num getIdealWeight();
}

class Client extends Person {
  Client(super.age, super.height, super.gander);

  @override
  num getIdealWeight() {
    if (gander == 0) {
      return weight = height / age * 10;
    } else {
      return weight = height / age * 9;
    }
  }
}
