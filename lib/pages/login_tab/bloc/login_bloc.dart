import 'package:assignment_test/pages/login_tab/bloc/login_event.dart';
import 'package:assignment_test/pages/login_tab/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocs extends Bloc<LoginEvent, LoginState> {
  LoginBlocs() : super(LoginState()) {
    on<LoginEvent>((event, emit) {});
  }
}
