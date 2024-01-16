import 'package:assignment_test/data/model/person_abstract_model.dart';

class Female extends Person {
  const Female(super.age, super.height);

  @override
  double getIdealWeight() {
    double weight = height / age * 10;
    return weight;
  }

  @override
  List<Object?> get props => [age, height];
}
