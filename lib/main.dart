import 'package:elibmobile/screens/bottom_nav_bar.dart';
import 'package:elibmobile/screens/home/home_page.dart';
import 'package:elibmobile/screens/home/pages/book_details.dart';
// import 'package:elibmobile/screens/splash/splash_screen.dart';
import 'package:elibmobile/screens/landing/landing_screen.dart';
import 'package:elibmobile/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
