import 'dart:async';

import 'package:dart_basic/1220/1220_quiz.dart';
import 'package:dart_basic/1220/1220_star.dart';
import 'package:dart_basic/bmi_calculator/main/main_screen.dart';
import 'package:dart_basic/starbucksUI.dart';
import 'package:dart_basic/stop_watch_string/stop_watch_string.dart';
import 'package:dart_basic/youtubeUI/youtubeUI.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: '',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
        ),
        primaryColor: Colors.black,
        // 앱바의 배경색을 검은색으로 설정합니다.
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        // 텍스트의 기본 색상을 흰색으로 설정합니다.
        textTheme: const TextTheme(
          // 텍스트의 기본 색상을 흰색으로 설정합니다.
          bodyText1: TextStyle(color: Colors.white),
        ),
      ),
      home: const StopWatchScreen(),
    );
  }
}
