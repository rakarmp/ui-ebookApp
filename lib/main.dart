import 'package:elibmobile/screens/bottom_nav_bar.dart';
import 'package:elibmobile/screens/home/home_page.dart';
import 'package:elibmobile/screens/home/pages/book_details.dart';
import 'package:elibmobile/screens/splash/splash_screen.dart';
import 'package:elibmobile/screens/landing/landing_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ElibMobile',
      debugShowCheckedModeBanner: false,
      routes: {
        BottomNavBar.nameRoute: (context) => BottomNavBar(),
        HomePage.nameRoute: (context) => HomePage(),
        BookDetail.nameRoute: (context) => BookDetail(),
      },
    );

    // ignore: dead_code
  }
}
