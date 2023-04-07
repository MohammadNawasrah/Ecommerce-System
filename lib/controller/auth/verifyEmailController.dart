// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:get/get.dart';

abstract class VerfiyEmailController extends GetxController {
  checkOTP();
  toSuccessSignUp();
}

class VerfiyEmailControllerImpl extends VerfiyEmailController {
  late String? otpCode;
  @override
  checkOTP() {}
  @override
  void onInit() {
    otpCode = "";
    super.onInit();
  }

  @override
  toSuccessSignUp() {
    if (otpCode == "12345") {
      Get.toNamed(AppRoute.successSignup);
      Get.delete<VerfiyEmailControllerImpl>();
    }
  }
}
