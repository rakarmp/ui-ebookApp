import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:elibmobile/screens/home/home.dart';
import 'package:elibmobile/screens/auth/login.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/splash/splash.png'),
      backgroundColor: Colors.white,
      navigator: Home(),
      durationInSeconds: 5,
    );
  }
}
