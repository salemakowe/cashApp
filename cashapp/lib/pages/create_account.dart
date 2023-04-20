import 'package:cashapp/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CreateAccoutPage extends StatefulWidget {
  const CreateAccoutPage({super.key});

  @override
  State<CreateAccoutPage> createState() => _CreateAccoutPageState();
}

class _CreateAccoutPageState extends State<CreateAccoutPage> {
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
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            size: 20.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 10),
        child: Column(
          children: const [
            Text(
              "Cashwise would like to know your phone number",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            Text(
              "Kindly enter your phone number below as a verification code will be sent to it",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
