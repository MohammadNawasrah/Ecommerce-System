// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormAuth extends StatelessWidget {
  String hint;
  String label;
  Icon suffixIconT;
  TextEditingController? textController;

  CustomTextFormAuth(
      {super.key,
      required this.hint,
      required this.label,
      required this.suffixIconT,
      required this.textController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 10),
      controller: textController,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 10),
          suffixIcon: suffixIconT,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(label)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 25),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
