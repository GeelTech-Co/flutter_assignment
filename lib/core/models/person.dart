abstract class PersonModel {
  num age;
  num height;
  num? weight;
  PersonModel(this.age, this.height);

  num getIdealWeight(
      /*
      if male weight = height / age * 10
      if female weight = height / age * 9
       */
      );
}
