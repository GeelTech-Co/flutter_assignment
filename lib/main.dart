import 'package:flutter/material.dart';
import 'my_app.dart';
import 'injection_container.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}
