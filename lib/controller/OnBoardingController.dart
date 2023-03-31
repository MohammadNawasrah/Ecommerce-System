// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:ecommercesystem/data/datasource/static/Static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onChangeSlider(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currntPage = 0;
  @override
  next() {
    if (currntPage > onBoardingList.length - 2) {
    } else {
      currntPage++;
      pageController.animateToPage(currntPage,
          duration: const Duration(milliseconds: 300), curve: Curves.linear);
    }
    update();
  }

  @override
  onChangeSlider(index) {
    currntPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
