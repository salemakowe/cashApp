import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'onboarding.dart';

class SplashScreenPage1 extends StatefulWidget {
  const SplashScreenPage1({super.key});

  @override
  State<SplashScreenPage1> createState() => _SplashScreenPage1State();
}

class _SplashScreenPage1State extends State<SplashScreenPage1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: ((context) => const OnboardingPage()),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.9, 1],
            colors: [
              const Color(0xff17c373).withOpacity(0.25),
              const Color.fromARGB(255, 77, 73, 73).withOpacity(0.5),
            ],
          ),
        ),
        child: Center(
          child: Image.asset("assets/imgs/logo.png"),
        ),
      ),
    );
  }
}
