// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../../core/constant/AppColor.dart';
import '../../core/constant/ScreenSize.dart';
import '../widget/onBoarding.dart/ButtonNext.dart';
import '../widget/onBoarding.dart/SliderBoard.dart';
import '../widget/onBoarding.dart/SliderDot.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  flex: (ScreenSize.widthScreen(context) / 15).ceil(),
                  child: const SliderBoard()),
              Expanded(
                  flex: 10,
                  child: Column(
                    children: [
                      const SliderDot(),
                      SizedBox(height: ScreenSize.heightScreen(context) / 10),
                      const ButtonNext(),
                    ],
                  )),
            ],
          ),
        ));
  }
}
