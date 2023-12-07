import 'package:assignment_test/potatotech_app.dart';
import 'package:flutter/material.dart';
import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await initLoginModule();
  await initGetItemModule();
  runApp(const PotatoTechApp());
}
