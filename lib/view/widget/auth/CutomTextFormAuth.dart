// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormAuth extends StatelessWidget {
  String hint;
  String label;
  Icon suffixIconT;
  TextEditingController? controller;

  CustomTextFormAuth({
    super.key,
    required this.hint,
    required this.label,
    required this.suffixIconT,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hint,
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
