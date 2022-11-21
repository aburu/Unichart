import 'package:flutter/material.dart';
import 'package:unichart3/palette.dart';
import 'package:unichart3/screens/login_screen.dart';

import '../widgets/name-input.dart';
import '../widgets/password-input.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: SingleChildScrollView(
        child: Container(
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
                height: 40,
              ),

              const NameInput(
                hint: 'Name',
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
              ),

              const NameInput(
                hint: 'Access Number',
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
              ),

              const PasswordInput(
                hint: 'Create Password',
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
              ),

              const PasswordInput(
                hint: 'Confirm Password',
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
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text("Already have an Account?",
                          style: mBodyText)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: const Text("Login", style: dBodyText)),
                ],
              ),

              // RichText(
              //   text: TextSpan(
              //     text: "Already have an Account?",
              //     style: mBodyText,
              //     children: [
              //       TextSpan(
              //       text: " Login",
              //       style: dBodyText,
              //       recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=> const LoginScreen()),
              //     ),
              //     ]
              // ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
