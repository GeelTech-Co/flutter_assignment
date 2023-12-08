
import 'package:assignment_test/features/login/data/models/login_attributes.dart';
import 'package:assignment_test/features/login/domain/use_cases/login_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUseCase) : super(LoginInitial());

  final LoginUseCase loginUseCase;

  Future<void> login({required LoginAttributes loginAttributes}) async {
      emit(LoginLoading());
    final result = await loginUseCase.call(loginAttributes);
    result.fold((l) {
      emit(LoginFailure(message: l.message));
    }, (r) {
      emit(LoginSuccess());
    });
  }
}
