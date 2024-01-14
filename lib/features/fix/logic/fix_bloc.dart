import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/helpers/enum.dart';
import '../data/model/person.dart';

part 'fix_event.dart';

part 'fix_state.dart';

part 'fix_bloc.freezed.dart';

class FixBloc extends Bloc<FixEvent, FixState> {
  FixBloc() : super(const FixState.initial()) {
    on<FixEvent>((event, emit) {});
    on<IncreaseCounter>((event, emit) => increaseCounter(event, emit));
    on<CalculateWeight>((event, emit) => calculateWeight(event, emit));
  }

  num counter = 0;
  num weight = 0;
  Persons? person;

  increaseCounter(IncreaseCounter event, Emitter<FixState> emit) {
    emit(const FixState.initial());
    counter += 1;
    emit(const FixState.increaseCounterState());
  }

  calculateWeight(CalculateWeight event, Emitter<FixState> emit) {
    emit(const FixState.initial());
    person = Persons(age: 25,height: 180,gender: Gender.male);
    weight = person!.getIdealWeight();
    emit(const FixState.calculateWeightState());

  }
}
