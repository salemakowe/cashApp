import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
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