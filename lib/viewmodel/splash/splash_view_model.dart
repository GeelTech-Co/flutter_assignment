import 'package:assignment_test/repositories/remote_data/remote_repository.dart';
import 'package:assignment_test/router/routes.dart';
import 'package:assignment_test/utils/auth_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final splashProvider =
    ChangeNotifierProvider.autoDispose<SplashViewModel>((ref) {
  return SplashViewModel();
});

class SplashViewModel extends ChangeNotifier {
  Future checkUser(BuildContext context) async {
    if (AuthSetting.instance.token == null) {
      context.go(AppRoutes.home);
      return;
    }
    try {
      Repository.instance.client.getUser();
    } catch (e) {
      debugPrint(e.toString());
    }
    context.go(AppRoutes.home);
  }
}
