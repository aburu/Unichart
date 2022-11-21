
import 'package:flutter/material.dart';
import '../palette.dart';


class NameInput extends StatelessWidget {
  const NameInput({
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
    var nameController =TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric
        (vertical: 12.0, horizontal: 50),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey[600]?.withOpacity(
              0.5),
          // borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          controller: nameController,
          decoration: InputDecoration(
            contentPadding:
            const EdgeInsets.symmetric
              (vertical: 20),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.
              symmetric(horizontal: 20),

            ),
            hintStyle: sBodyText,
          ),
          style: kBodyText,
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
