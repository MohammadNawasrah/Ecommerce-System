// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommercesystem/controller/OnBoardingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../core/constant/ScreenSize.dart';

class ButtonNext extends GetView<OnBoardingControllerImp> {
  const ButtonNext({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.widthScreen(context) / 2,
      height: ScreenSize.heightScreen(context) / 15,
      child: ElevatedButton(
          onPressed: () {
            controller.next();
          },
          child: const AutoSizeText(
            'Let\'s go',
            maxLines: 1,
          )),
    );
  }
}
