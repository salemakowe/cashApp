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
          const DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/imgs/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //pages
          PageView(
            controller: _pageviewcontroller,
            children: const [
              Onboarding1(),
              Onboarding2(),
              Onboarding3(),
            ],
          ),

          //page indicator
          Container(
            padding: const EdgeInsets.only(top: 10),
            alignment: Alignment.topCenter,
            child: SmoothPageIndicator(
              controller: _pageviewcontroller,
              count: 3,
              effect: const WormEffect(
                dotColor: Kolors.textWhite,
                activeDotColor: Kolors.creditText,
                dotHeight: 5.0,
                dotWidth: 50,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    height: MediaQuery.of(context).size.height * .08,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff12b669),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SplashScreenPage2(),
                          ),
                        );
                      },
                      child: const Text(
                        tButton1,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    height: MediaQuery.of(context).size.height * .08,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: const BorderSide(
                            color: Kolors.creditText,
                          )),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        tLoginTitle,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
