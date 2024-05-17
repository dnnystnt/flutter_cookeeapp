import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter_cookeeapp/pages/onboarding_page.dart';
import 'package:flutter_cookeeapp/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/onboarding-page');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 428,
              height: 428,
              margin: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/cookee-logo-app.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
