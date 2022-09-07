import 'package:elib/screens/home/home_screen.dart';
import 'package:elib/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ElibMobile',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: SplashScreenPage(),
    );
  }
}