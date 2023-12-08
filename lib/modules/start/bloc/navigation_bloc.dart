import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(LoginScreenState()) {
    on<NavigationEvent>((event, emit) {
      if (event is NavigateToLogin) {
        emit(LoginScreenState());
      } else if (event is NavigateToItems) {
        emit(ItemsScreenState());
      } else if (event is NavigateToFix) {
        emit(FixScreenState());
      }
    });
  }
}
