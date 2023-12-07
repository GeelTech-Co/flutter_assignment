import 'package:assignment_test/features/authentication/login/domain/entities/authentication.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import '../../../domain/usecases/login.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginUseCase}) : super(LoginInitial());
  final LoginUseCase loginUseCase;
  var formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
    emit(LoginLoading());
    final results = await loginUseCase(LoginUseCaseInput(
        email: emailController.text, password: passwordController.text));
    results.fold((failure) {
      print ("asasaa${failure.message}");
      emit(LoginError(message: failure.message));
    },
        (data) => emit(LoginLoaded(authentication: data)));
  }

  bool isObscure = false;

  void heddenPassword() {
    isObscure = !isObscure;
    emit(HeddenPassword());
  }
}
