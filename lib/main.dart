import 'package:flutter/material.dart';
import 'package:flutter_cookeeapp/pages/detail_page.dart';
import 'package:flutter_cookeeapp/pages/login_page.dart';
import 'package:flutter_cookeeapp/pages/main_page.dart';
import 'package:flutter_cookeeapp/pages/onboarding_page.dart';
import 'package:flutter_cookeeapp/pages/splash_page.dart';
import 'package:flutter_cookeeapp/pages/succeed_page.dart';
import 'package:flutter_cookeeapp/pages/summary_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: SplashPage(),
        routes: {
          '/': (context) => SplashPage(),
          '/onboarding-page': (context) => OnboardingPage(),
          '/login-page': (context) => LoginPage(),
          '/main-page': (context) => MainPage(),
          '/detail-page': (context) => DetailPage(),
          '/summary-page': (context) => SummaryPage(),
          '/succeed-page': (context) => SucceedPage(),
        });
  }
}
