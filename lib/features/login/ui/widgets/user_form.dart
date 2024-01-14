import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helpers/app_color.dart';
import '../../../../core/helpers/setup_error_message.dart';
import '../../../../core/helpers/spacing.dart';
import '../../logic/login_bloc.dart';

class UserForm extends StatelessWidget {
  const UserForm({
    super.key,
    required this.bloc,
  });

  final LoginBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is ErrorGetUser) {
          setupErrorMessage(error: state.error, context: context);
        }
        if (state is ErrorLogin) {
          setupErrorMessage(error: state.error, context: context);
        }
      },
      builder: (context, state) {
        if (state is SuccessGetUser) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'userName: ${state.data.data?.user?.name}',
                  textAlign: TextAlign.center,
                ),
                const VerticalSpace(12),
                ElevatedButton(
                    onPressed: () async {
                      if (state is LoadingLogout) {
                        return;
                      }
                      bloc.add(const Logout());
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: state is LoadingLogout
                            ? const CircularProgressIndicator.adaptive(
                                backgroundColor: AppColor.whiteColor,
                              )
                            : const Text('Logout'),
                      ),
                    )),
              ],
            ),
          );
        }
        if (state is LoadingGetUser) {
          return const Center(
            child: CircularProgressIndicator.adaptive(
                backgroundColor: AppColor.primaryColor),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
