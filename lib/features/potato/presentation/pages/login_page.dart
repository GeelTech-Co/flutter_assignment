import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/services/services_locator.dart';
import '../../../../core/utils/app_strings.dart';
import '../../domain/usecases/login_use_case.dart';
import '../manager/cubit/potato_cubit.dart';
import '../widget/defult_button.dart';
import '../widget/email_felid.dart';
import '../widget/password_feild.dart';

class LoginTab extends StatelessWidget {
  LoginTab({Key? key}) : super(key: key);
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  var fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: ConnectivityWidgetWrapper(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            EmailFelid(controller: usernameController),
            PasswordFelid(
              controller: passwordController,
            ),
            SizedBox(
              height: 10.h,
            ),
            BlocProvider(
              create: (context) => sl<PotatoCubit>(),
              child: BlocConsumer<PotatoCubit, PotatoState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state is LoadingLoginState
                      ? const Center(child: CircularProgressIndicator())
                      : DefaultButton(
                          name: AppStrings.login,
                          onPressed: () async {
                            if (fromKey.currentState!.validate()) {
                              context.read<PotatoCubit>().login(
                                  userData: UserData(
                                      userName: usernameController.text,
                                      password: passwordController.text),
                                  context: context);
                            }
                          },
                        );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
