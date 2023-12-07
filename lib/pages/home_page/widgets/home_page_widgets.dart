import 'package:flutter/material.dart';

Widget tabStyle(String text, BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.25,
    child: Tab(
      child: Text(text),
    ),
  );
}
