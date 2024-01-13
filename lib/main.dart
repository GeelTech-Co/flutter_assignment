import 'package:assignment_test/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'view/fix.dart';
import 'view/items.dart';
import 'view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(title: 'Potato Tech Flutter Assignment'),
    );
  }
}

