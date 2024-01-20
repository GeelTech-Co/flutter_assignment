import 'package:assignment_test/features/authorization/presentation/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'authenticate_page.dart';
import 'login_page.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of(context);
    if(authProvider.isAuthenticated){
      return const AuthenticatePage();
    }else{
      return LoginPage();
    }
  }
}
