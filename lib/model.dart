abstract class Person {
  num age;
  num height;
  num? weight;
  Person(this.age,this.height);

  num? getIdealWeight(
      /*
      if male weight = height / age * 10
      if female weight = height / age * 9
       */
      );

}

class Male extends Person{
  Male(super.age, super.height);

  @override
  num? getIdealWeight() {
    weight = height / age * 10;

    return weight;
  }
}

class Female extends Person{
  Female(super.age, super.height);

  @override
  num? getIdealWeight() {
    weight = height / age * 9;

    return weight;
  }
}
