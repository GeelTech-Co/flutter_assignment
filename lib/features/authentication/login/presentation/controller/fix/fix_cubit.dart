import 'package:assignment_test/core/helper/constance.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fix_state.dart';

class FixCubit extends Cubit<FixState> {
  FixCubit() : super(FixInitial());

  int counter=0;
  num weight=0;

  increaseCounter() {
    counter +=1;
    emit(FixIncreaseCounter());
  }


  getIIdealWeight() {
    weight = Constance.getIdealWeight(180, 23, true);
    emit(FixIdealWightState());
  }
}
