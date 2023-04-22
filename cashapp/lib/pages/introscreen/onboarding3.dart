import 'package:cashapp/constants/colors.dart';
import 'package:cashapp/constants/text_strings.dart';
import 'package:cashapp/pages/login.dart';
import 'package:flutter/material.dart';

import '../splashscreen2.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
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
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 50),
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "Swift pay all",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Kolors.textGreen,
                      ),
                      children: [
                        TextSpan(
                          text: ' bill',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Kolors.textWhite,
                          ),
                        ),
                        TextSpan(
                          text: ' and get',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Kolors.creditText,
                          ),
                        ),
                        TextSpan(
                          text: ' rewarded',
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
                  const Spacer(),
                  // Row(
                  //   children: [
                  //     SizedBox(
                  //       width: MediaQuery.of(context).size.width * .4,
                  //       height: MediaQuery.of(context).size.height * .08,
                  //       child: ElevatedButton(
                  //         style: ElevatedButton.styleFrom(
                  //             backgroundColor: const Color(0xff12b669),
                  //             shape: RoundedRectangleBorder(
                  //                 borderRadius: BorderRadius.circular(10))),
                  //         onPressed: () {
                  //           Navigator.of(context).push(
                  //             MaterialPageRoute(
                  //               builder: (context) => const SplashScreenPage2(),
                  //             ),
                  //           );
                  //         },
                  //         child: const Text(
                  //           tButton1,
                  //           style: TextStyle(
                  //             fontFamily: 'Poppins',
                  //             fontSize: 15,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Spacer(),
                  //     SizedBox(
                  //       width: MediaQuery.of(context).size.width * .4,
                  //       height: MediaQuery.of(context).size.height * .08,
                  //       child: ElevatedButton(
                  //         style: ElevatedButton.styleFrom(
                  //             backgroundColor: Colors.transparent,
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(10),
                  //             ),
                  //             side: const BorderSide(
                  //               color: Kolors.creditText,
                  //             )),
                  //         onPressed: () {
                  //           Navigator.of(context).push(
                  //             MaterialPageRoute(
                  //               builder: (context) => const LoginPage(),
                  //             ),
                  //           );
                  //         },
                  //         child: const Text(
                  //           tLoginTitle,
                  //           style: TextStyle(
                  //             fontFamily: 'Poppins',
                  //             fontSize: 15,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
