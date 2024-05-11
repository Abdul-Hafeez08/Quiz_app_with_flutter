import 'package:flutter/material.dart';
import 'package:quiz_app_with_result/model/splash_screen.dart';
import 'package:quiz_app_with_result/quiz.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      home: const SplashScreen(),
    );
  }
}
