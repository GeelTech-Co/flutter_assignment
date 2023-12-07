
import 'package:assignment_test/Features/fixpage/presentation/manger/fix_bloc/fix_event.dart';
import 'package:assignment_test/Features/fixpage/presentation/manger/fix_bloc/fix_state.dart';
import 'package:bloc/bloc.dart';


class FixBloc extends Bloc<FixEvent, FixState> {
  FixBloc() : super(FixInitial()) {
    on<IncEvent>((event, emit) {
      int index = 0;
        if (state is IncState) {
          index = (state as IncState).index;
          print(index);
          emit(IncState(index: index += 1));
        } else {
          emit(IncState(index: 1));
        }
    });
  }
}
