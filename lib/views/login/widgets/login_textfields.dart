import 'package:flutter/material.dart';

class LoginTextFiled extends StatefulWidget {
  const LoginTextFiled({
    super.key,
    this.lableTxt,
    this.cont,
    this.focusNode,
    this.keyboardType,
    this.isPassword = false,
    this.err,
  });
  final String? lableTxt;
  final TextEditingController? cont;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final bool isPassword;
  final String? err;

  @override
  State<LoginTextFiled> createState() => _LoginTextFiledState();
}

class _LoginTextFiledState extends State<LoginTextFiled> {
  late bool _isObscure;

  @override
  void initState() {
    if (widget.isPassword) {
      _isObscure = true;
    } else {
      _isObscure = false;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.cont,
      keyboardType: widget.keyboardType,
      obscureText: _isObscure,
      decoration: InputDecoration(
        labelText: widget.lableTxt,
        errorText: widget.err,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  _isObscure = !_isObscure;
                  setState(() {});
                },
              )
            : null,
      ),
    );
  }
}
