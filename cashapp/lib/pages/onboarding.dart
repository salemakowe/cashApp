import 'package:cashapp/constants/colors.dart';
import 'package:cashapp/pages/introscreen/onboarding1.dart';
import 'package:cashapp/pages/introscreen/onboarding3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/text_strings.dart';
import 'introscreen/onboarding2.dart';
import 'login.dart';
import 'splashscreen2.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageviewcontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image.asset(
          //   'assets/imgs/background.png',
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height,
          //   fit: BoxFit.cover,
          // ),
          //page indicator
          PageView(
            controller: _pageviewcontroller,
            children: const [
              Onboarding1(),
              Onboarding2(),
              Onboarding3(),
            ],
          ),
          Container(
            alignment: Alignment.topCenter,
            child: SmoothPageIndicator(
              controller: _pageviewcontroller,
              count: 3,
              effect: const WormEffect(
                dotColor: Kolors.textWhite,
                dotHeight: 5.0,
                dotWidth: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
