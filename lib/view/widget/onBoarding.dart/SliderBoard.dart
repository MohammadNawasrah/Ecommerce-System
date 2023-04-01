// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/AppColor.dart';
import '../../../core/constant/ScreenSize.dart';
import '../../../data/datasource/static/Static.dart';

class SliderBoard extends StatelessWidget {
  const SliderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              AutoSizeText(onBoardingList[i].title!,
                  maxLines: 1,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(height: ScreenSize.heightScreen(context) / 12),
              Image.asset(
                onBoardingList[i].image!,
                width: ScreenSize.widthScreen(context) / 2,
                height: ScreenSize.heightScreen(context) / 3,
                fit: BoxFit.fill,
              ),
              SizedBox(height: ScreenSize.heightScreen(context) / 20),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: AutoSizeText(
                  onBoardingList[i].body!,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: const TextStyle(
                      color: AppColor.darkGrey,
                      fontWeight: FontWeight.bold,
                      height: 2),
                ),
              )
            ],
          );
        });
  }
}
