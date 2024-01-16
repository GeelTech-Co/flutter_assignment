import 'dart:math';

import 'package:assignment_test/data/model/female_model.dart';
import 'package:assignment_test/data/model/male_model.dart';
import 'package:assignment_test/data/model/person_abstract_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fix_state.dart';

class FixCubit extends Cubit<FixState> {
  FixCubit() : super(const FixState(person: Male(22, 155)));
  void increment() {
    emit(state.copyWith(
      counter: state.counter + 1,
    ));
  }

  void calculateWight() {
    int height = Random().nextInt(200);
    int age = Random().nextInt(70);
    Person newPerson;
    if (age % 2 == 0) {
      newPerson = Male(age, height);
    } else {
      newPerson = Female(age, height);
    }
    emit(state.copyWith(
      person: newPerson,
    ));
  }
}
