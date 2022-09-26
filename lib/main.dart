import 'package:elibmobile/screens/bottom_nav_bar.dart';
import 'package:elibmobile/screens/home/home_page.dart';
import 'package:elibmobile/screens/home/pages/book_details.dart';
// import 'package:elibmobile/screens/splash/splash_screen.dart';
import 'package:elibmobile/screens/landing/landing_screen.dart';
import 'package:elibmobile/screens/splash/splash_screen.dart';
import 'package:elibmobile/themes.dart';
import 'package:flutter/material.dart';
import 'package:elibmobile/utils/user_preferences.dart';
import 'package:flutter/services.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:get_storage/get_storage.dart';

Future main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await UserPreferences.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: SplashPage(),
    //   debugShowCheckedModeBanner: false,
    // );
    final user = UserPreferences.getUser();

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Theme.of(context),
          title: title,
          home: SplashPage(),
        ),
      ),
    );
  }
}
