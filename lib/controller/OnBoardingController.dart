// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:get/get_state_manager/get_state_manager.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onChangeSlider(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currntPage = 0;
  @override
  next() {
    // throw UnimplementedError();
  }

  @override
  onChangeSlider(index) {
    currntPage = index;
    update();
  }
}
