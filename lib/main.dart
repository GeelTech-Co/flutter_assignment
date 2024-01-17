import 'package:assignment_test/app_run.dart';
import 'package:flutter/material.dart';
import 'package:assignment_test/config/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}
