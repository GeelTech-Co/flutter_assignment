import 'package:assignment_test/app/flutter_assignment_app.dart';
import 'package:assignment_test/helpers/service_locator.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
  runApp(MyApp());
}
