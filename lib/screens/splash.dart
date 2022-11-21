import 'package:flutter/material.dart';
import 'package:unichart3/palette.dart';
import 'package:unichart3/screens/registration_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(children: [
          const SizedBox(
            height: 100,
          ),
          const Center(
              child: Text(
            "Welcome to UniChat",
            style: kHeading,
          )),
          const SizedBox(
            height: 50,
          ),
          const Center(
              child: Text(
            "Step into your school community",
            style: kBodyText,
          )),
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              "Stay connected",
              style: nBodyText,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Image(
            image: AssetImage('assets/images/homepage2.png'),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(220, 80),
                backgroundColor: Color(0xFF5763C5)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RegistrationScreen()));
            },
            child: const Text(
              "Get Started",
              style: tBodyText,
            ),
          ),
        ]),
      )),
    );
  }
}
