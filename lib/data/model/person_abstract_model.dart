import 'package:equatable/equatable.dart';

abstract class Person extends Equatable {
  final num age;
  final num height;
  const Person(this.age, this.height);
  double getIdealWeight();
}
