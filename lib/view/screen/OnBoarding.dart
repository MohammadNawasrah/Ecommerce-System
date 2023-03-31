// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../data/datasource/static/Static.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
            itemCount: onBoardingList.length,
            itemBuilder: (context, i) {
              return Column(
                children: [
                  AutoSizeText(onBoardingList[i].title!),
                  Image.asset(onBoardingList[i].image!),
                  AutoSizeText(onBoardingList[i].body!),
                ],
              );
            }),
      ),
    );
  }
}

class Static {}
