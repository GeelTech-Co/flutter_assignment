import 'package:assignment_test/resources/colors_manager.dart';
import 'package:assignment_test/resources/strings_manager.dart';
import 'package:flutter/material.dart';

void showNoInternetConnectionSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(seconds: 3),
    content: Text(StringsManager.noInternetConnection),
  ));
}
Future<dynamic> showEnsuringUserNameAndPasswordDialog(BuildContext context) {
  return showAdaptiveDialog(context: context, builder: (context)=> AlertDialog.adaptive(
    backgroundColor: ColorsManager.blackBg,
    actions: [
      TextButton(
          child: Text(StringsManager.ok,style: Theme.of(context).textTheme.displayMedium,),
          onPressed: () {
            Navigator.pop(context);
          }
      )
    ],
    title: Text(StringsManager.alert,style: Theme.of(context).textTheme.displayMedium,),
    content: Text(StringsManager.ensureUserNameAndPassword,style: Theme.of(context).textTheme.displayMedium,),
  ));
}