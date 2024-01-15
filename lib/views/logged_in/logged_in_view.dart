import 'package:assignment_test/viewmodel/login/login_cont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoggedInView extends ConsumerWidget {
  const LoggedInView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cont = ref.watch(loginNotifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          cont.loggedUserName,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            cont.logout();
          },
          child: const Text('Logout'),
        )
      ],
    );
  }
}
