// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  toSignup();
  toForgetPass();
  showPasswordF();
}

class LoginControllerImpl extends LoginController {
  bool showPassword = true;
  GlobalKey<FormState> formState = GlobalKey();
  late TextEditingController email;
  late TextEditingController password;

  @override
  login() {
    var formData = formState.currentState;
    if (formData!.validate()) {
    } else {}
  }

  @override
  toSignup() {
    Get.offNamed(AppRoute.signup);
    Get.delete<LoginControllerImpl>();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  toForgetPass() {
    Get.offNamed(AppRoute.forgetPass);
    Get.delete<LoginControllerImpl>();
  }

  @override
  showPasswordF() {
    showPassword = showPassword == true ? false : true;
    update();
  }
}
