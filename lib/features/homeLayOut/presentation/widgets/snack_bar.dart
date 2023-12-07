import 'package:flutter/material.dart';

snackBarWidget(bool error, String message, context) {
  var snackBar = SnackBar(
    content: Row(
      children: [
        error
            ? const Icon(
                Icons.error,
                color: Colors.white,
              )
            : Container(),
        error
            ? const SizedBox(
                width: 15,
              )
            : Container(),
        Text(message),
      ],
    ),
    backgroundColor:
        error ? Colors.red.withOpacity(.6) : Colors.green.withOpacity(.6),
    elevation: 0,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
