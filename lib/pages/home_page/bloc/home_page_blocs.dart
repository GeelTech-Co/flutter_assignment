import 'package:assignment_test/pages/home_page/bloc/home_page_events.dart';
import 'package:assignment_test/pages/home_page/bloc/home_page_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBlocs extends Bloc<HomePageEvent, HomePageState> {
  HomePageBlocs() : super(HomePageState()) {
    on<HomePageEvent>((event, emit) {
      emit(HomePageState(page: state.page));
    });
  }
}
