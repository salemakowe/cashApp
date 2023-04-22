import 'package:cashapp/constants/colors.dart';
import 'package:cashapp/constants/text_strings.dart';
import 'package:cashapp/pages/login.dart';
import 'package:flutter/material.dart';

import '../splashscreen2.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/imgs/background.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 50),
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "Take the first big step",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Kolors.textGreen,
                      ),
                      children: [
                        TextSpan(
                          text: ' to your financial future.',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Kolors.textWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
