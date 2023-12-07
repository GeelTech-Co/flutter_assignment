abstract class Person {
  num age;
  num height;
  num? weight =0;
  Person(this.age,this.height);

  num getIdealWeight();
}
class Human extends Person{
  Human(super.age, super.height);

  @override
  num getIdealWeight() {
    /*
      if male weight = height / age * 10
      if female weight = height / age * 9
       */
    super.weight = super.height/super.age *10;
    return super.weight!;
  }
}
