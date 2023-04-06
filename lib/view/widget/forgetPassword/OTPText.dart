// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../core/constant/ScreenSize.dart';

// ignore: must_be_immutable
class OTPText extends StatelessWidget {
  void Function(String)? onSubmet;
  OTPText({super.key, required this.onSubmet});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      margin: EdgeInsets.all(ScreenSize.widthScreen(context) / 30),
      borderRadius: BorderRadius.circular(30),
      numberOfFields: 5,
      enabledBorderColor: Colors.black,
      borderColor: const Color(0xFF512DA8),
      showFieldAsBox: true,
      onSubmit: onSubmet,
    );
  }
}
