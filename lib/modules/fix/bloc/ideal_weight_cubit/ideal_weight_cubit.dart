import 'package:assignment_test/modules/fix/bloc/ideal_weight_cubit/ideal_weight_state.dart';
import 'package:assignment_test/modules/fix/models/fix_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IdealWeightCubit extends Cubit<IdealWeightState> {
  IdealWeightCubit() : super(IdealWeightState(0));

  void calculateIdealWeight(num age, num height, bool isMale) {
    Person person = isMale ? Male(age, height) : Female(age, height);
    num idealWeight = person.getIdealWeight();
    emit(IdealWeightState(idealWeight));
  }
}