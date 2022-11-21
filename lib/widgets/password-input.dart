
import 'package:flutter/material.dart';
import '../palette.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,

    required this.hint,
    required this.inputType,
    required this.inputAction,

  }) : super(key: key);


  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric
        (vertical: 12.0, horizontal: 50),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey[600]?.withOpacity(
              0.5),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding:
            const EdgeInsets.symmetric
              (vertical: 20),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: const Padding(
              padding: EdgeInsets.
              symmetric(horizontal: 20),
            ),
            hintStyle: sBodyText,
          ),
          obscureText: true,
          style: kBodyText,
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
// TextField reusableTextField(String text, IconData icon, bool isPasswordType,
//     TextEditingController controller){
//   return TextField(controller: controller,
//     obscureText: isPasswordType,
//     enableSuggestions: !isPasswordType,
//     autocorrect: !isPasswordType,
//     cursorColor: Colors.white,
//     style: TextStyle(color: Colors.white.withOpacity(0.9)),
//     decoration: InputDecoration(prefixIcon: Icon(icon, color: Colors.white70,),
//       labelText: text,
//       labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
//       filled: true,
//       floatingLabelBehavior: FloatingLabelBehavior.never,
//       fillColor: Colors.white.withOpacity(0.3),
//       border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15.0),
//           borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
//     ),
//     keyboardType: isPasswordType
//         ? TextInputType.visiblePassword
//         : TextInputType.emailAddress,
//   );
// }