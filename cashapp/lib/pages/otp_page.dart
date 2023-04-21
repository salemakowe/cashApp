import 'package:cashapp/pages/create_account.dart';
import 'package:flutter/material.dart';

import '../constants/text_strings.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});
  // int number;

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          tCreateAccoutTitle,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Montserrat',
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CreateAccoutPage(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            size: 20.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 35, 24, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Confirm your phone number",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "Kindly enter the otp code sent to the number you provided 1234567890.",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13,
                fontWeight: FontWeight.normal,
                color: Color(0xff6c727f),
              ),
            ),
            // SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
