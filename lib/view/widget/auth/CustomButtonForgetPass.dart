// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CustomButtonForgetPass extends StatelessWidget {
  void Function()? onTap;
  CustomButtonForgetPass({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap, child: AutoSizeText("forgetPass".tr));
  }
}
