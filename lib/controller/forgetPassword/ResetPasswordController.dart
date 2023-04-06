// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  checkTwoPass();
  toSuccessResetPassword();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController rePassword;
  @override
  checkTwoPass() {}
  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  toSuccessResetPassword() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRoute.successResetPassword);
      Get.delete<ResetPasswordControllerImpl>();
    } else {}
  }
}
