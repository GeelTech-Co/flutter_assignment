abstract class Person {
  num age;
  num height;
  num? weight;
  Gender gender;
  Person(this.age,this.height,this.gender);

  num getIdealWeight();

}
 class PersonsWeight extends Person{
   PersonsWeight(super.age, super.height, super.gender);

  @override
  num getIdealWeight() {
    if (gender == Gender.male) {
      return height / age * 10;
    } else {
      return height / age * 9;
    }
  }
}
enum Gender {
  male,
  female,
}
