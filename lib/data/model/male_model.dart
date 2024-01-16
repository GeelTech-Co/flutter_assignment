import 'package:assignment_test/data/model/person_abstract_model.dart';

class Male extends Person {
  const Male(super.age, super.height);

  @override
  double getIdealWeight() {
    double weight = height / age * 9;
    return weight;
  }

  @override
  List<Object?> get props => [age, height];
}
