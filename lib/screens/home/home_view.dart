import 'package:elibmobile/screens/home/home_screen.dart';
import 'package:elibmobile/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
