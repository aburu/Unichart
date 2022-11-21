import 'package:flutter/material.dart';
import 'package:unichart3/palette.dart';
import 'package:unichart3/screens/registration_screen.dart';

import '../widgets/name-input.dart';
import '../widgets/password-input.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Center(
                child: Text(
              "Welcome Onboard!!",
              style: kHeading,
            )),
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                "Lets get you wired",
                style: nBodyText,
              ),
            ),
            const SizedBox(
              height: 200,
            ),

            const NameInput(
              hint: 'Enter Access Number',
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.next,
            ),

            const PasswordInput(
              hint: 'Enter Password',
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.next,
            ),

            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(220, 80),
                  backgroundColor: Color(0xFF5763C5)),
              onPressed: () {},
              child: const Text(
                "Register",
                style: tBodyText,
              ),
            ),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child:
                        const Text("Don't have an Account?", style: mBodyText)),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistrationScreen()));
                    },
                    child: const Text("Register", style: dBodyText)),
              ],
            ),

            // RichText(text: TextSpan(
            //     text: "Don't have an Account?",
            //     style: mBodyText,
            //     children: [
            //       TextSpan(
            //         text: " Register",
            //         style: dBodyText,
            //         recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>const RegistrationScreen()),
            //       )
            //     ]
            // ),
            // ),
          ],
        ),
      ),
    );
  }
}
