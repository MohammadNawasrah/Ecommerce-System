// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeController extends GetxController {
  checkOTP();
  toResetPassword();
}

class VerfiyCodeControllerImpl extends VerfiyCodeController {
  late String? otpCode;
  @override
  checkOTP() {}
  @override
  void onInit() {
    otpCode = "";
    super.onInit();
  }

  @override
  toResetPassword() {
    if (otpCode == "12345") {
      Get.toNamed(AppRoute.resetPassword);
    }
  }
}
