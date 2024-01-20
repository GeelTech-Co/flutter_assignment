import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? type;
  final String? hintText;
  final FormFieldValidator<String>? validator;

  const AppTextField({
    Key? key,
    required this.controller,
    this.keyboardType,
    this.type = '',
    this.hintText = '',
    this.validator,
  }) : super(key: key);

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool view = false;

  Widget? _buildSuffixIcon() {
    switch (widget.type) {
      case "password":
        {
          return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: view
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          view = false;
                        });
                      },
                      child: Icon(Icons.visibility,
                          size: 30.0, color: Theme.of(context).primaryColor))
                  : InkWell(
                      onTap: () {
                        setState(() {
                          view = true;
                        });
                      },
                      child: Icon(Icons.visibility_off,
                          size: 30.0, color: Colors.grey[500])));
        }
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      obscureText: ((widget.type == "password" && !view)) ? true : false,
      decoration: InputDecoration(
          labelText: widget.hintText, suffixIcon: _buildSuffixIcon()),
    );
  }
}
