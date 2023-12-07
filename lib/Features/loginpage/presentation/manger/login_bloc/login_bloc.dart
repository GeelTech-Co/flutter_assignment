
import 'package:assignment_test/Features/loginpage/presentation/manger/login_bloc/login_event.dart';
import 'package:assignment_test/Features/loginpage/presentation/manger/login_bloc/login_state.dart';
import 'package:assignment_test/core/utils/api.dart';
import 'package:bloc/bloc.dart';

class LogInBloc extends Bloc<LoginEvent, LogInState> {
  AppApi appApi = AppApi();
  LogInBloc() : super(LogInInitState()) {
    on<LoginV>((event, emit) async {
      try {
       Map<String, dynamic> data = {
          "username": event.email,
          "password": event.password
        };
        var response = await appApi.post("url", data);
        emit(SucceseLogin()); 
      } catch (e) {
        print(e.toString());
      }
    });
  }
}