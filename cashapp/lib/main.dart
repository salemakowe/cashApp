import 'package:cashapp/pages/onboarding.dart';
import 'package:cashapp/pages/splashscreen1.dart';
import 'package:flutter/material.dart';

import 'pages/create_account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CashApp',
      // home: SplashScreenPage1(),
      home: OnboardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
