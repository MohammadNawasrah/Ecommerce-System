// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtonAuth extends StatelessWidget {
  String buttonText;
  Color buttonColor;
  void Function()? onPress;
  CustomButtonAuth(
      {super.key,
      required this.buttonText,
      required this.onPress,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(vertical: 12),
        color: buttonColor,
        onPressed: onPress,
        child: Text(buttonText));
  }
}
