import 'package:flutter/material.dart';
import 'package:ui_bwa/pages/Home_page.dart';
import 'package:ui_bwa/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/OnBoardingPage': (context) => HomePage(),
      },
    );
  }
}
