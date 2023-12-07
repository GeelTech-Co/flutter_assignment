import 'package:assignment_test/pages/fix_tab/bloc/fix_events.dart';
import 'package:assignment_test/pages/fix_tab/bloc/fix_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FixBlocs extends Bloc<FixEvent, FixState> {
  FixBlocs() : super(FixState()) {
    on<FixEvent>((event, emit) {
    });
  }
}
