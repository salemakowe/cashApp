import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xff17c373).withOpacity(0.2),
            const Color(0xff000000),
            const Color(0xffeefff6),
            const Color(0xffffffff),
          ],
        ),
      ),
      child: const Scaffold(),
    );
  }
}
