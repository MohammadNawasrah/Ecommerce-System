// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../../../core/constant/AppColor.dart';
import '../../../core/constant/ScreenSize.dart';
import '../../../data/datasource/static/Static.dart';

class SliderDot extends StatelessWidget {
  const SliderDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(onBoardingList.length, (index) {
          return AnimatedContainer(
            margin: EdgeInsets.only(left: ScreenSize.widthScreen(context) / 40),
            duration: const Duration(seconds: 300),
            width: ScreenSize.widthScreen(context) / 60,
            height: ScreenSize.widthScreen(context) / 60,
            decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(10)),
          );
        })
      ],
    );
  }
}
