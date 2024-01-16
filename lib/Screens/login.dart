import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Models/Responses/HttpResponse.dart';
import '../Providers/auth_provider.dart';
import '../Utils/user_utils.dart';

class LoginTab extends StatefulWidget {
  LoginTab({Key? key}) : super(key: key);

  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool isObscure = false;

  AuthController? _authProvider;

  final _validationFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    checkIfStayLogin();
  }

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Form(
      key: _validationFormKey,
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: size.width*0.04,end: size.width*0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              controller: _usernameController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: "Username",
              ),
            ),
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: isObscure,
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: IconButton(
                  icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                   setState(() {
                     isObscure = !isObscure;
                   });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () async {
                    onClickLoginButton();
                  },
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text('Login'),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  onClickLoginButton() {
    if (checkValidFormFiled()) {
      String userName = _usernameController.text.trim();
      String password = _passwordController.text.trim();

      login(userName, password);
    }
  }

  void login(String userName, String password) async {
    HttpResponse response =
        await _authProvider!.login(userName, password, password);
    if (response.responseCode == 200) {
    } else {
      if (kDebugMode) {
        print(response.message);
      }
    }
  }

  bool checkValidFormFiled() {
    return _validationFormKey.currentState!.validate();
  }

  void checkIfStayLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? token = preferences.getString("token");

    await UserUtils.fetchUserInformationFromSharedToSingletonClass()
        .then((value){
          if(token !=null){

          }
    });
  }
}
