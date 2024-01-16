import 'package:assignment_test/config/enum/get_data_status.dart';

import 'package:assignment_test/core/widget/app_dialog.dart';
import 'package:assignment_test/core/widget/app_text_field.dart';
import 'package:assignment_test/feature/login/bloc/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (contextB) => LoginCubit(context: context),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          switch (state.getDataStatus) {
            case GetDataStatus.loading:
              AppDialogs.showLoadingDialog(context: context).whenComplete(
                () => context.read<LoginCubit>().restDialog(),
              );
              break;
            case GetDataStatus.field:
              Navigator.pop(context);
              AppDialogs.showErrorDialog(
                context: context,
                errorMassage: state.errorMassage,
                onTapRetry: () {
                  Navigator.pop(context);
                  return context.read<LoginCubit>().login();
                },
              ).whenComplete(
                () => context.read<LoginCubit>().restDialog(),
              );
              break;
            case GetDataStatus.successful:
              Navigator.pop(context);
              context.read<LoginCubit>().restDialog();
            default:
          }
        },
        listenWhen: (previous, current) =>
            previous.getDataStatus != current.getDataStatus ||
            previous.errorMassage != current.errorMassage,
        buildWhen: (previous, current) => false,
        builder: (context, state) {
          return Form(
            key: context.read<LoginCubit>().keyForm,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BlocSelector<LoginCubit, LoginState, String?>(
                  selector: (state) => state.name,
                  builder: (context, name) {
                    return Visibility(
                      visible: name != null,
                      child: Text(
                        name ?? '',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    );
                  },
                ),
                AppTextField(
                  labelText: "Username",
                  textEditingController:
                      context.read<LoginCubit>().userNameController,
                  textInputType: TextInputType.text,
                  validator: context.read<LoginCubit>().isUserName,
                ),
                BlocSelector<LoginCubit, LoginState, bool>(
                  selector: (state) => state.isObscurePassword,
                  builder: (context, isObscurePassword) {
                    return AppTextField(
                      labelText: "Password",
                      textEditingController:
                          context.read<LoginCubit>().passwordController,
                      isObscurePassword: isObscurePassword,
                      textInputType: TextInputType.visiblePassword,
                      suffix: IconButton(
                        icon: Icon(isObscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () =>
                            context.read<LoginCubit>().showAndHidePassword(),
                      ),
                      validator: context.read<LoginCubit>().isPassword,
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => context.read<LoginCubit>().login(),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text('Login'),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
