abstract class Person {
  num age;
  num height;
  num? idealWeight;

  Person(this.age, this.height, {this.idealWeight});

  void getIdealWeight();


}

class Male extends Person {
  Male(num age, num height, {num? idealWeight}) : super(age, height, idealWeight: idealWeight);

  @override
  void getIdealWeight() {
    idealWeight = height / age * 10;
    // return height / age * 10;
  }
}

class Female extends Person {
  Female(num age, num height, {num? idealWeight}) : super(age, height, idealWeight: idealWeight);

  @override
  void getIdealWeight() {

    idealWeight =  height / age * 9;
    // return height / age * 9;
  }
}



// abstract class Person {
//   num age;
//   num height;
//   num? weight;
//
//   Person(this.age, this.height);
//
//   num getIdealWeight(
//       /*
//       if male weight = height / age * 10
//       if female weight = height / age * 9
//        */
//       ) {
//      implement getIdealWeight
//     throw UnimplementedError();
//   }
// }
