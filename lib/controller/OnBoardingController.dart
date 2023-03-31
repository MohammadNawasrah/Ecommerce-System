// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:ecommercesystem/data/datasource/static/Static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onChangeSlider(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currntPage = 0;
  @override
  next() {
    currntPage++;
    if (currntPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoute.Login);
    } else {
      if (pageController.hasClients) {
        pageController.animateToPage(currntPage,
            duration: const Duration(milliseconds: 300), curve: Curves.linear);
      }
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
    currntPage = 0;
    pageController = PageController();
    super.onInit();
  }
}
