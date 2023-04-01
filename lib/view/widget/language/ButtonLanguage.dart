// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/ScreenSize.dart';

// ignore: must_be_immutable
class ButtonLanguage extends StatelessWidget {
  late void Function() onPressed;
  String languageText;
  ButtonLanguage(
      {super.key, required this.languageText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.widthScreen(context) / 1.2,
      child: ElevatedButton(
          onPressed: onPressed,
          child: AutoSizeText(
            languageText,
            maxLines: 1,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )),
    );
  }
}
