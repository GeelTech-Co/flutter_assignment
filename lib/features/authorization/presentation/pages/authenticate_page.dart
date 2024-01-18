import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';

class AuthenticatePage extends StatelessWidget {
  const AuthenticatePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 14.0),
                children: [
                  const TextSpan(
                    text: 'User Name : ',
                  ),
                  TextSpan(
                    text: authProvider.userDataModel?.name??'',
                    style: const TextStyle(
                        color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 18
                    ),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () async {
                  authProvider.logout();
                },
                child:  const Center(
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text('Logout'),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
