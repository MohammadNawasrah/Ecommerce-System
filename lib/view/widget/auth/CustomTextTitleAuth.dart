// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextTitleAuth extends StatelessWidget {
  String title;
  CustomTextTitleAuth({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(title,
        maxLines: 1,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold));
  }
}
