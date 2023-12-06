import 'package:flutter/material.dart';

void showNoInternetSnackBar({required BuildContext context, Color backgroundColor = Colors.black,required String text}) {
  final snackBar = SnackBar(backgroundColor: backgroundColor,
    content: Text(text),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}


