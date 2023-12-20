import 'package:dart_basic/1220/1220_quiz.dart';
import 'package:dart_basic/1220/1220_star.dart';
import 'package:dart_basic/bmi_calculator/main/main_screen.dart';
import 'package:dart_basic/stop_watch_string/stop_watch_string.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BirthdayCard(),
    );
  }
}
